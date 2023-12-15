import 'package:ai.labull.org.cn/models/image_generation/image_generation.dart';
import 'package:ai.labull.org.cn/models/image_variation/image_variation.dart';
import 'package:dart_mappable/dart_mappable.dart';
import '../gallery_type.dart';
part 'gallery_state.mapper.dart';

@MappableClass()
sealed class GalleryState with GalleryStateMappable {
  final String stateType;
  final List<ImageGeneration> imageGeneration;
  final List<ImageVariation> imageVariation;
  final String? error;
  const GalleryState({
    required this.stateType,
    required this.imageGeneration,
    required this.imageVariation,
    this.error,
  });
}

@MappableClass()
final class GalleryStateInitial extends GalleryState
    with GalleryStateInitialMappable {
  const GalleryStateInitial({
    String stateType = galleryStateInitialType,
  }) : super(
          stateType: stateType,
          imageGeneration: const [],
          imageVariation: const [],
        );
  static const fromMap = GalleryStateInitialMapper.fromMap;
  static const fromJson = GalleryStateInitialMapper.fromJson;
}

@MappableClass()
final class GalleryStateLoadImagesInitial extends GalleryState
    with GalleryStateLoadImagesInitialMappable {
  const GalleryStateLoadImagesInitial({
    String stateType = galleryStateLoadImagesInitialType,
    required List<ImageGeneration> imageGeneration,
    required List<ImageVariation> imageVariation,
  }) : super(
          stateType: stateType,
          imageGeneration: imageGeneration,
          imageVariation: imageVariation,
        );
  static const fromMap = GalleryStateLoadImagesInitialMapper.fromMap;
  static const fromJson = GalleryStateLoadImagesInitialMapper.fromJson;
}

@MappableClass()
final class GalleryStateLoadImagesProgress extends GalleryState
    with GalleryStateLoadImagesProgressMappable {
  const GalleryStateLoadImagesProgress({
    String stateType = galleryStateLoadImagesProgressType,
    required List<ImageGeneration> imageGeneration,
    required List<ImageVariation> imageVariation,
  }) : super(
          stateType: stateType,
          imageGeneration: imageGeneration,
          imageVariation: imageVariation,
        );
  static const fromMap = GalleryStateLoadImagesProgressMapper.fromMap;
  static const fromJson = GalleryStateLoadImagesProgressMapper.fromJson;
}

@MappableClass()
final class GalleryStateLoadImagesSuccess extends GalleryState
    with GalleryStateLoadImagesSuccessMappable {
  const GalleryStateLoadImagesSuccess({
    String stateType = galleryStateLoadImagesSuccessType,
    required List<ImageGeneration> imageGeneration,
    required List<ImageVariation> imageVariation,
  }) : super(
          stateType: stateType,
          imageGeneration: imageGeneration,
          imageVariation: imageVariation,
        );
  static const fromMap = GalleryStateLoadImagesSuccessMapper.fromMap;
  static const fromJson = GalleryStateLoadImagesSuccessMapper.fromJson;
}

@MappableClass()
final class GalleryStateLoadImagesFailure extends GalleryState
    with GalleryStateLoadImagesFailureMappable {
  const GalleryStateLoadImagesFailure({
    String stateType = galleryStateLoadImagesFailureType,
    required List<ImageGeneration> imageGeneration,
    required List<ImageVariation> imageVariation,
    required String error,
  }) : super(
          stateType: stateType,
          imageGeneration: imageGeneration,
          imageVariation: imageVariation,
          error: error,
        );
  static const fromMap = GalleryStateLoadImagesFailureMapper.fromMap;
  static const fromJson = GalleryStateLoadImagesFailureMapper.fromJson;
}
