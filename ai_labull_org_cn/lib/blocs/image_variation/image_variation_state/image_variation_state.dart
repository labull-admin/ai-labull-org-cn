import 'package:ai.labull.org.cn/models/image_variation/image_variation.dart';
import 'package:dart_mappable/dart_mappable.dart';
import '../../../models/image_variation_settings/image_variation_settings.dart';
import '../image_variation_type.dart';
part 'image_variation_state.mapper.dart';

@MappableClass()
sealed class ImageVariationState with ImageVariationStateMappable {
  final String stateType;
  final ImageVariationSettings imageVariationSettings;
  final List<ImageVariation> imageVariations;
  final String? error;
  const ImageVariationState({
    required this.stateType,
    required this.imageVariationSettings,
    required this.imageVariations,
    this.error,
  });
}

@MappableClass()
final class ImageVariationStateInitial extends ImageVariationState
    with ImageVariationStateInitialMappable {
  ImageVariationStateInitial(
      {String stateType = imageVariationStateInitialType})
      : super(
          stateType: stateType,
          imageVariationSettings: ImageVariationSettings(),
          imageVariations: [],
        );
  static const fromMap = ImageVariationStateInitialMapper.fromMap;
  static const fromJson = ImageVariationStateInitialMapper.fromJson;
}

@MappableClass()
final class ImageVariationStateVariateImageInitial extends ImageVariationState
    with ImageVariationStateVariateImageInitialMappable {
  const ImageVariationStateVariateImageInitial({
    stateType = imageVariationStateVariateImageInitialType,
    required ImageVariationSettings imageVariationSettings,
    required List<ImageVariation> imageVariations,
  }) : super(
          imageVariationSettings: imageVariationSettings,
          stateType: stateType,
          imageVariations: imageVariations,
        );
  static const fromMap = ImageVariationStateVariateImageInitialMapper.fromMap;
  static const fromJson = ImageVariationStateVariateImageInitialMapper.fromJson;
}

@MappableClass()
final class ImageVariationStateVariateImageProgress extends ImageVariationState
    with ImageVariationStateVariateImageProgressMappable {
  const ImageVariationStateVariateImageProgress({
    stateType = imageVariationStateVariateImageProgressType,
    required ImageVariationSettings imageVariationSettings,
    required List<ImageVariation> imageVariations,
  }) : super(
          imageVariationSettings: imageVariationSettings,
          stateType: stateType,
          imageVariations: imageVariations,
        );
  static const fromMap = ImageVariationStateVariateImageProgressMapper.fromMap;
  static const fromJson =
      ImageVariationStateVariateImageProgressMapper.fromJson;
}

@MappableClass()
final class ImageVariationStateVariateImageSuccess extends ImageVariationState
    with ImageVariationStateVariateImageSuccessMappable {
  const ImageVariationStateVariateImageSuccess({
    stateType = imageVariationStateVariateImageSuccessType,
    required ImageVariationSettings imageVariationSettings,
    required List<ImageVariation> imageVariations,
  }) : super(
          imageVariationSettings: imageVariationSettings,
          stateType: stateType,
          imageVariations: imageVariations,
        );
  static const fromMap = ImageVariationStateVariateImageSuccessMapper.fromMap;
  static const fromJson = ImageVariationStateVariateImageSuccessMapper.fromJson;
}

@MappableClass()
final class ImageVariationStateVariateImageFailure extends ImageVariationState
    with ImageVariationStateVariateImageFailureMappable {
  const ImageVariationStateVariateImageFailure({
    stateType = imageVariationStateVariateImageFailureType,
    required ImageVariationSettings imageVariationSettings,
    required List<ImageVariation> imageVariations,
    required String error,
  }) : super(
          imageVariationSettings: imageVariationSettings,
          stateType: stateType,
          imageVariations: imageVariations,
          error: error,
        );
  static const fromMap = ImageVariationStateVariateImageFailureMapper.fromMap;
  static const fromJson = ImageVariationStateVariateImageFailureMapper.fromJson;
}

@MappableClass()
final class ImageVariationStateSettingsChangedProgress
    extends ImageVariationState
    with ImageVariationStateSettingsChangedProgressMappable {
  const ImageVariationStateSettingsChangedProgress({
    stateType = imageVariationStateSettingsChangedProgressType,
    required ImageVariationSettings imageVariationSettings,
    required List<ImageVariation> imageVariations,
  }) : super(
          imageVariationSettings: imageVariationSettings,
          stateType: stateType,
          imageVariations: imageVariations,
        );
  static const fromMap =
      ImageVariationStateSettingsChangedProgressMapper.fromMap;
  static const fromJson =
      ImageVariationStateSettingsChangedProgressMapper.fromJson;
}

@MappableClass()
final class ImageVariationStateSettingsChangedSuccess
    extends ImageVariationState
    with ImageVariationStateSettingsChangedSuccessMappable {
  const ImageVariationStateSettingsChangedSuccess({
    stateType = imageVariationStateSettingsChangedSuccessType,
    required ImageVariationSettings imageVariationSettings,
    required List<ImageVariation> imageVariations,
  }) : super(
          stateType: stateType,
          imageVariationSettings: imageVariationSettings,
          imageVariations: imageVariations,
        );
  static const fromMap =
      ImageVariationStateSettingsChangedSuccessMapper.fromMap;
  static const fromJson =
      ImageVariationStateSettingsChangedSuccessMapper.fromJson;
}

@MappableClass()
final class ImageVariationStateSettingsChangedFailure
    extends ImageVariationState
    with ImageVariationStateSettingsChangedFailureMappable {
  const ImageVariationStateSettingsChangedFailure({
    stateType = imageVariationStateSettingsChangedFailureType,
    required ImageVariationSettings imageVariationSettings,
    required List<ImageVariation> imageVariations,
  }) : super(
          stateType: stateType,
          imageVariationSettings: imageVariationSettings,
          imageVariations: imageVariations,
        );
  static const fromMap =
      ImageVariationStateSettingsChangedFailureMapper.fromMap;
  static const fromJson =
      ImageVariationStateSettingsChangedFailureMapper.fromJson;
}
