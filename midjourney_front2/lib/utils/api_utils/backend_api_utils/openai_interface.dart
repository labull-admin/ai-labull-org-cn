import 'dart:convert';
import 'package:ai.labull.org.cn/models/image_generation/image_generation.dart';
import 'package:ai.labull.org.cn/models/user/user.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

String? labullAiBackendApiBaseUrl =
    dotenv.maybeGet('LABULL_AI_BACKEND_API_BASE_URL', fallback: null);

String imageGenerationApiUrl =
    "$labullAiBackendApiBaseUrl/openai_interface/image_generation/";

Future<ImageGeneration> openaiImageGenerate({
  required User user,
  required String model,
  required String prompt,
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
