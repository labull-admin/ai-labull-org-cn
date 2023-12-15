import 'package:dart_mappable/dart_mappable.dart';
part 'image_variation.mapper.dart';

@MappableClass()
class ImageVariation with ImageVariationMappable {
  final int pk;
  final int user;
  final String size;
  final String originalImage;
  final int n;
  final List<ImageVariationResponseItem> imageVariationResponseItems;
  final String createdAt;

  ImageVariation({
    required this.pk,
    required this.user,
    required this.size,
    required this.originalImage,
    required this.n,
    required this.imageVariationResponseItems,
    required this.createdAt,
  });

  static const fromMap = ImageVariationMapper.fromMap;
  static const fromJson = ImageVariationMapper.fromJson;
}

@MappableClass()
class ImageVariationResponseItem with ImageVariationResponseItemMappable {
  final int pk;
  final String shortLivedImageUrl;
  final String? image;
  final int imageVariation;

  ImageVariationResponseItem({
    required this.pk,
    required this.shortLivedImageUrl,
    required this.image,
    required this.imageVariation,
  });
  static const fromMap = ImageVariationResponseItemMapper.fromMap;
  static const fromJson = ImageVariationResponseItemMapper.fromJson;
}
