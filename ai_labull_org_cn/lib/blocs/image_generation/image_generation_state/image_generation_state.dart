import 'package:ai.labull.org.cn/models/image_generation/image_generation.dart';
import 'package:dart_mappable/dart_mappable.dart';
import '../../../models/image_generation_settings/image_generation_settings.dart';
import '../image_generation_type.dart';
part 'image_generation_state.mapper.dart';

@MappableClass()
sealed class ImageGenerationState with ImageGenerationStateMappable {
  final String stateType;
  final ImageGenerationSettings imageGenerationSettings;
  final List<ImageGeneration> imageGenerations;
  final String? error;
  const ImageGenerationState({
    required this.stateType,
    required this.imageGenerationSettings,
    required this.imageGenerations,
    this.error,
  });
}

@MappableClass()
final class ImageGenerationStateInitial extends ImageGenerationState
    with ImageGenerationStateInitialMappable {
  ImageGenerationStateInitial(
      {String stateType = imageGenerationStateInitialType})
      : super(
          stateType: stateType,
          imageGenerationSettings: ImageGenerationSettings(),
          imageGenerations: [],
        );
  static const fromMap = ImageGenerationStateInitialMapper.fromMap;
  static const fromJson = ImageGenerationStateInitialMapper.fromJson;
}

@MappableClass()
final class ImageGenerationStateGenerateImageInitial
    extends ImageGenerationState
    with ImageGenerationStateGenerateImageInitialMappable {
  const ImageGenerationStateGenerateImageInitial({
    stateType = imageGenerationStateGenerateImageInitialType,
    required ImageGenerationSettings imageGenerationSettings,
    required List<ImageGeneration> imageGenerations,
  }) : super(
          imageGenerationSettings: imageGenerationSettings,
          stateType: stateType,
          imageGenerations: imageGenerations,
        );
  static const fromMap = ImageGenerationStateGenerateImageInitialMapper.fromMap;
  static const fromJson =
      ImageGenerationStateGenerateImageInitialMapper.fromJson;
}

@MappableClass()
final class ImageGenerationStateGenerateImageProgress
    extends ImageGenerationState
    with ImageGenerationStateGenerateImageProgressMappable {
  const ImageGenerationStateGenerateImageProgress({
    stateType = imageGenerationStateGenerateImageProgressType,
    required ImageGenerationSettings imageGenerationSettings,
    required List<ImageGeneration> imageGenerations,
  }) : super(
          imageGenerationSettings: imageGenerationSettings,
          stateType: stateType,
          imageGenerations: imageGenerations,
        );
  static const fromMap =
      ImageGenerationStateGenerateImageProgressMapper.fromMap;
  static const fromJson =
      ImageGenerationStateGenerateImageProgressMapper.fromJson;
}

@MappableClass()
final class ImageGenerationStateGenerateImageSuccess
    extends ImageGenerationState
    with ImageGenerationStateGenerateImageSuccessMappable {
  const ImageGenerationStateGenerateImageSuccess({
    stateType = imageGenerationStateGenerateImageSuccessType,
    required ImageGenerationSettings imageGenerationSettings,
    required List<ImageGeneration> imageGenerations,
  }) : super(
          imageGenerationSettings: imageGenerationSettings,
          stateType: stateType,
          imageGenerations: imageGenerations,
        );
  static const fromMap = ImageGenerationStateGenerateImageSuccessMapper.fromMap;
  static const fromJson =
      ImageGenerationStateGenerateImageSuccessMapper.fromJson;
}

@MappableClass()
final class ImageGenerationStateGenerateImageFailure
    extends ImageGenerationState
    with ImageGenerationStateGenerateImageFailureMappable {
  const ImageGenerationStateGenerateImageFailure({
    stateType = imageGenerationStateGenerateImageFailureType,
    required ImageGenerationSettings imageGenerationSettings,
    required List<ImageGeneration> imageGenerations,
    required String error,
  }) : super(
          imageGenerationSettings: imageGenerationSettings,
          stateType: stateType,
          imageGenerations: imageGenerations,
          error: error,
        );
  static const fromMap = ImageGenerationStateGenerateImageFailureMapper.fromMap;
  static const fromJson =
      ImageGenerationStateGenerateImageFailureMapper.fromJson;
}

@MappableClass()
final class ImageGenerationStateSettingsChangedProgress
    extends ImageGenerationState
    with ImageGenerationStateSettingsChangedProgressMappable {
  const ImageGenerationStateSettingsChangedProgress({
    stateType = imageGenerationStateSettingsChangedProgressType,
    required ImageGenerationSettings imageGenerationSettings,
    required List<ImageGeneration> imageGenerations,
  }) : super(
          imageGenerationSettings: imageGenerationSettings,
          stateType: stateType,
          imageGenerations: imageGenerations,
        );
  static const fromMap =
      ImageGenerationStateSettingsChangedProgressMapper.fromMap;
  static const fromJson =
      ImageGenerationStateSettingsChangedProgressMapper.fromJson;
}

@MappableClass()
final class ImageGenerationStateSettingsChangedSuccess
    extends ImageGenerationState
    with ImageGenerationStateSettingsChangedSuccessMappable {
  const ImageGenerationStateSettingsChangedSuccess({
    stateType = imageGenerationStateSettingsChangedSuccessType,
    required ImageGenerationSettings imageGenerationSettings,
    required List<ImageGeneration> imageGenerations,
  }) : super(
          stateType: stateType,
          imageGenerationSettings: imageGenerationSettings,
          imageGenerations: imageGenerations,
        );
  static const fromMap =
      ImageGenerationStateSettingsChangedSuccessMapper.fromMap;
  static const fromJson =
      ImageGenerationStateSettingsChangedSuccessMapper.fromJson;
}

@MappableClass()
final class ImageGenerationStateSettingsChangedFailure
    extends ImageGenerationState
    with ImageGenerationStateSettingsChangedFailureMappable {
  const ImageGenerationStateSettingsChangedFailure({
    stateType = imageGenerationStateSettingsChangedFailureType,
    required ImageGenerationSettings imageGenerationSettings,
    required List<ImageGeneration> imageGenerations,
  }) : super(
          stateType: stateType,
          imageGenerationSettings: imageGenerationSettings,
          imageGenerations: imageGenerations,
        );
  static const fromMap =
      ImageGenerationStateSettingsChangedFailureMapper.fromMap;
  static const fromJson =
      ImageGenerationStateSettingsChangedFailureMapper.fromJson;
}
