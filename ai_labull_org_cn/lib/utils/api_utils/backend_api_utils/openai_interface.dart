import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:ai.labull.org.cn/exceptions/openai_interface_exception.dart';
import 'package:ai.labull.org.cn/models/image_generation/image_generation.dart';
import 'package:ai.labull.org.cn/models/image_variation/image_variation.dart';
import 'package:ai.labull.org.cn/models/user/user.dart';
import 'package:ai.labull.org.cn/utils/http_utils/dio_client.dart';
import 'package:image_picker/image_picker.dart';

String labullAiBackendApiBaseUrl =
    const bool.hasEnvironment('LABULL_AI_BACKEND_API_BASE_URL')
        ? const String.fromEnvironment('LABULL_AI_BACKEND_API_BASE_URL')
        : (throw ArgumentError('LABULL_AI_BACKEND_API_BASE_URL is not set.'));

String imageGenerationApiUrl =
    "$labullAiBackendApiBaseUrl/openai_interface/image_generation/";
String imageGenerationFilteredQuerySetUrl =
    "$labullAiBackendApiBaseUrl/openai_interface/image_generation/get_query_set_for_those_contain_response_items/";
String imageVariationApiUrl =
    "$labullAiBackendApiBaseUrl/openai_interface/image_variation/";
String imageVariationFilteredQuerySetUrl =
    "$labullAiBackendApiBaseUrl/openai_interface/image_variation/get_query_set_for_those_contain_response_items/";

Dio dio = DioClient.getDioInstance();
Future<ImageGeneration> openaiImageGenerate({
  required User user,
  required String model,
  required String prompt,
  required bool ifRevisePrompt,
  required String size,
  required String quality,
  required int n,
}) async {
  try {
    final response = await dio.post(
      imageGenerationApiUrl,
      data: {
        'model': model,
        'prompt': prompt,
        'if_revise_prompt': ifRevisePrompt,
        'size': size,
        'quality': quality,
        'n': n,
      },
    );
    if (response.statusCode == 201) {
      final List<ImageGenerationResponseItem> imageGenerationResponseItems =
          response.data['image_generation_response_items']
              .map<ImageGenerationResponseItem>((item) {
        return ImageGenerationResponseItem(
          pk: item['pk'],
          revisedPrompt: item['revised_prompt'],
          revisedPromptInChinese: item['revised_prompt_in_chinese'],
          shortLivedImageUrl: item['short_lived_image_url'],
          image: item['image'],
          imageGeneration: item['image_generation'],
        );
      }).toList();
      final ImageGeneration imageGeneration = ImageGeneration(
        pk: response.data['pk'],
        user: response.data['user'],
        model: response.data['model'],
        prompt: response.data['prompt'],
        ifRevisePrompt: response.data['if_revise_prompt'],
        size: response.data['size'],
        quality: response.data['quality'],
        n: response.data['n'],
        imageGenerationResponseItems: imageGenerationResponseItems,
        createdAt: response.data['created_at'],
      );
      return imageGeneration;
    } else {
      String errorMessage =
          'Failed to call openai image generation: ${response.statusCode} ${response.data}';
      throw OpenaiInterfaceException(errorMessage);
    }
  } catch (e) {
    throw ('openaiImageGenerate error: $e');
  }
}

Future<ImageVariation> openaiImageVariate({
  required User user,
  required XFile originalImage,
  required String size,
  required int n,
}) async {
  try {
    // Create FormData
    Uint8List uint8list = await originalImage.readAsBytes();
    FormData formData = FormData.fromMap({
      'size': size,
      'n': n.toString(),
    });
    formData.files.add(MapEntry(
      'original_image',
      MultipartFile.fromBytes(
        uint8list,
        filename: originalImage.name,
      ),
    ));
    BaseOptions options = dio.options;
    Response response = await dio.post(
      imageVariationApiUrl,
      data: formData,
      options: Options(
        headers: {
          'Content-Type': 'multipart/form-data',
        },
      ),
    );
    if (response.statusCode == 201) {
      final List<ImageVariationResponseItem> imageVariationResponseItems =
          response.data['image_variation_response_items']
              .map<ImageVariationResponseItem>((item) {
        return ImageVariationResponseItem(
          pk: item['pk'],
          shortLivedImageUrl: item['short_lived_image_url'],
          image: item['image'],
          imageVariation: item['image_variation'],
        );
      }).toList();
      final ImageVariation imageVariation = ImageVariation(
        pk: response.data['pk'],
        user: response.data['user'],
        size: response.data['size'],
        originalImage: response.data['original_image'],
        n: response.data['n'],
        imageVariationResponseItems: imageVariationResponseItems,
        createdAt: response.data['created_at'],
      );

      return imageVariation;
    } else {
      String errorMessage =
          'Failed to call openai image variation: ${response.statusCode} ${response.data}';
      throw OpenaiInterfaceException(errorMessage);
    }
  } catch (e) {
    throw ('openaiImageVariate error: $e');
  }
}

Future<List<ImageGeneration>> getImageGenerationListForGallery({
  required User user,
  int pageSize = 10,
}) async {
  try {
    Dio dio = Dio();
    dio.options.extra['withCredentials'] = true;
    final response = await dio.get(
      "$imageGenerationFilteredQuerySetUrl?ordering=-created_at&page_size=$pageSize",
    );
    if (response.statusCode == 200) {
      final responseBody = response.data;
      final List<ImageGeneration> imageGenerations =
          (responseBody['results'] as List).map((imageGeneration) {
        final List<ImageGenerationResponseItem> imageGenerationResponseItems =
            (imageGeneration['image_generation_response_items'] as List)
                .map<ImageGenerationResponseItem>((item) {
          return ImageGenerationResponseItem(
            pk: item['pk'],
            revisedPrompt: item['revised_prompt'],
            revisedPromptInChinese: item['revised_prompt_in_chinese'],
            shortLivedImageUrl: item['short_lived_image_url'],
            image: item['image'],
            imageGeneration: item['image_generation'],
          );
        }).toList();
        return ImageGeneration(
          pk: imageGeneration['pk'],
          user: imageGeneration['user'],
          model: imageGeneration['model'],
          prompt: imageGeneration['prompt'],
          ifRevisePrompt: imageGeneration['if_revise_prompt'],
          size: imageGeneration['size'],
          quality: imageGeneration['quality'],
          n: imageGeneration['n'],
          imageGenerationResponseItems: imageGenerationResponseItems,
          createdAt: imageGeneration['created_at'],
        );
      }).toList();

      return imageGenerations;
    } else {
      String errorMessage =
          'Failed to call getImageGenerationListForGallery: ${response.statusCode} ${response.data}';
      throw OpenaiInterfaceException(errorMessage);
    }
  } catch (e) {
    throw ('getImageGenerationListForGallery error: $e');
  }
}

Future<List<ImageVariation>> getImageVariationListForGallery({
  required User user,
  int pageSize = 10,
}) async {
  try {
    Dio dio = Dio();
    dio.options.extra['withCredentials'] = true;
    final response = await dio.get(
      "$imageVariationFilteredQuerySetUrl?ordering=-created_at&page_size=$pageSize",
    );
    if (response.statusCode == 200) {
      final responseBody = response.data;
      final List<ImageVariation> imageVariations =
          (responseBody['results'] as List).map((imageVariation) {
        final List<ImageVariationResponseItem> imageVariationResponseItems =
            (imageVariation['image_variation_response_items'] as List)
                .map<ImageVariationResponseItem>((item) {
          return ImageVariationResponseItem(
            pk: item['pk'],
            shortLivedImageUrl: item['short_lived_image_url'],
            image: item['image'],
            imageVariation: item['image_variation'],
          );
        }).toList();

        return ImageVariation(
          pk: imageVariation['pk'],
          user: imageVariation['user'],
          size: imageVariation['size'],
          originalImage: imageVariation['original_image'],
          n: imageVariation['n'],
          imageVariationResponseItems: imageVariationResponseItems,
          createdAt: imageVariation['created_at'],
        );
      }).toList();

      return imageVariations;
    } else {
      String errorMessage =
          'Failed to call getImageVariationListForGallery: ${response.statusCode} ${response.data}';
      throw OpenaiInterfaceException(errorMessage);
    }
  } catch (e) {
    throw ('getImageVariationListForGallery error: $e');
  }
}

Future<String> translateToEnglish(
    {required User user, required String text}) async {
  try {
    final response = await dio.get(
      "$labullAiBackendApiBaseUrl/openai_interface/translate_to_english/$text/",
    );
    if (response.statusCode == 200) {
      final String translatedText = response.data['translated_text'];
      return translatedText;
    } else {
      String errorMessage =
          'Failed to call openai translate_to_english: ${response.statusCode} ${response.data}';
      throw OpenaiInterfaceException(errorMessage);
    }
  } catch (e) {
    throw ('translate_to_english error: $e');
  }
}
