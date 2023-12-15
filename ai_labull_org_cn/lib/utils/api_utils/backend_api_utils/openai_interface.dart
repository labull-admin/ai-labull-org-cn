import 'dart:convert';
import 'package:ai.labull.org.cn/models/image_generation/image_generation.dart';
import 'package:ai.labull.org.cn/models/image_variation/image_variation.dart';
import 'package:ai.labull.org.cn/models/user/user.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';

String? labullAiBackendApiBaseUrl =
    dotenv.maybeGet('LABULL_AI_BACKEND_API_BASE_URL', fallback: null);

String imageGenerationApiUrl =
    "$labullAiBackendApiBaseUrl/openai_interface/image_generation/";
String imageGenerationFilteredQuerySetUrl =
    "$labullAiBackendApiBaseUrl/openai_interface/image_generation/get_query_set_for_those_contain_response_items/";
String imageVariationApiUrl =
    "$labullAiBackendApiBaseUrl/openai_interface/image_variation/";
String imageVariationFilteredQuerySetUrl =
    "$labullAiBackendApiBaseUrl/openai_interface/image_variation/get_query_set_for_those_contain_response_items/";

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
    final response = await http.post(
      Uri.parse(imageGenerationApiUrl),
      headers: {
        'Authorization': 'JWT ${user.jwtAccessToken}',
        'Content-Type': 'application/json'
      },
      body: json.encode({
        'model': model,
        'prompt': prompt,
        'if_revise_prompt': ifRevisePrompt,
        'size': size,
        'quality': quality,
        'n': n.toString(),
      }),
    );
    if (response.statusCode == 201) {
      final responseBody = jsonDecode(utf8.decode(response.bodyBytes));

      final List<ImageGenerationResponseItem> imageGenerationResponseItems =
          responseBody['image_generation_response_items']
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
        pk: responseBody['pk'],
        user: responseBody['user'],
        model: responseBody['model'],
        prompt: responseBody['prompt'],
        ifRevisePrompt: responseBody['if_revise_prompt'],
        size: responseBody['size'],
        quality: responseBody['quality'],
        n: responseBody['n'],
        imageGenerationResponseItems: imageGenerationResponseItems,
        createdAt: responseBody['created_at'],
      );

      return imageGeneration;
    } else {
      String errorMessage =
          'Failed to call openai image generation: ${response.statusCode} ${response.body}';
      throw Exception(errorMessage);
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
// Create a multipart request
    MultipartRequest request =
        http.MultipartRequest('POST', Uri.parse(imageVariationApiUrl))
          ..headers['Authorization'] = 'JWT ${user.jwtAccessToken}';
// Add image as multipart file
    var pic = await http.MultipartFile.fromPath(
        'original_image', originalImage.path,
        filename: originalImage.name);
    request.files.add(pic);

// Add other fields
    request.fields['size'] = size;
    request.fields['n'] = n.toString();

// Send request
    var response = await request.send();

    if (response.statusCode == 201) {
      String responseBodyString = await response.stream.bytesToString();
      Map<String, dynamic> responseBody = jsonDecode(responseBodyString);
      final List<ImageVariationResponseItem> imageVariationResponseItems =
          responseBody['image_variation_response_items']
              .map<ImageVariationResponseItem>((item) {
        return ImageVariationResponseItem(
          pk: item['pk'],
          shortLivedImageUrl: item['short_lived_image_url'],
          image: item['image'],
          imageVariation: item['image_variation'],
        );
      }).toList();
      final ImageVariation imageVariation = ImageVariation(
        pk: responseBody['pk'],
        user: responseBody['user'],
        size: responseBody['size'],
        originalImage: responseBody['original_image'],
        n: responseBody['n'],
        imageVariationResponseItems: imageVariationResponseItems,
        createdAt: responseBody['created_at'],
      );

      return imageVariation;
    } else {
      String errorMessage =
          'Failed to call openai image variation: ${response.statusCode} ${response.reasonPhrase}';
      throw Exception(errorMessage);
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
    final response = await http.get(
      Uri.parse(
          "$imageGenerationFilteredQuerySetUrl?ordering=-created_at&page_size=$pageSize"),
      headers: {
        'Authorization': 'JWT ${user.jwtAccessToken}',
        'Content-Type': 'application/json'
      },
    );
    if (response.statusCode == 200) {
      final responseBody = jsonDecode(utf8.decode(response.bodyBytes));
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
          'Failed to call getImageGenerationListForGallery: ${response.statusCode} ${response.body}';
      throw Exception(errorMessage);
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
    final response = await http.get(
      Uri.parse(
          "$imageVariationFilteredQuerySetUrl?ordering=-created_at&page_size=$pageSize"),
      headers: {
        'Authorization': 'JWT ${user.jwtAccessToken}',
        'Content-Type': 'application/json'
      },
    );
    if (response.statusCode == 200) {
      final responseBody = jsonDecode(utf8.decode(response.bodyBytes));
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
          'Failed to call getImageVariationListForGallery: ${response.statusCode} ${response.body}';
      throw Exception(errorMessage);
    }
  } catch (e) {
    throw ('getImageVariationListForGallery error: $e');
  }
}
