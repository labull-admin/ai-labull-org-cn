import 'package:dart_mappable/dart_mappable.dart';
part 'image_generation.mapper.dart';

@MappableClass()
class ImageGeneration with ImageGenerationMappable {
  final int pk;
  final int user;
  final String model;
  final String prompt;
  final bool ifRevisePrompt;
  final String size;
  final String quality;
  final int n;
  final List<ImageGenerationResponseItem> imageGenerationResponseItems;
  final String createdAt;

  ImageGeneration({
    required this.pk,
    required this.user,
    required this.model,
    required this.prompt,
    required this.ifRevisePrompt,
    required this.size,
    required this.quality,
    required this.n,
    required this.imageGenerationResponseItems,
    required this.createdAt,
  });

  static const fromMap = ImageGenerationMapper.fromMap;
  static const fromJson = ImageGenerationMapper.fromJson;
}

@MappableClass()
class ImageGenerationResponseItem with ImageGenerationResponseItemMappable {
  final int pk;
  final String? revisedPrompt;
  final String? revisedPromptInChinese;
  final String shortLivedImageUrl;
  final String? image;
  final int imageGeneration;

  ImageGenerationResponseItem({
    required this.pk,
    required this.revisedPrompt,
    required this.revisedPromptInChinese,
    required this.shortLivedImageUrl,
    required this.image,
    required this.imageGeneration,
  });
  static const fromMap = ImageGenerationResponseItemMapper.fromMap;
  static const fromJson = ImageGenerationResponseItemMapper.fromJson;
}
