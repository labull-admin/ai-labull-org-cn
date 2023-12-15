part of 'image_generation_bloc.dart';

sealed class ImageGenerationEvent extends Equatable {
  const ImageGenerationEvent();

  @override
  List<Object> get props => [];
}

class ImageGenerationSettingsChange extends ImageGenerationEvent {
  final ImageGenerationSettings imageGenerationSettings;

  const ImageGenerationSettingsChange({required this.imageGenerationSettings});

  @override
  List<Object> get props => [imageGenerationSettings];
}

class GenerateImages extends ImageGenerationEvent {
  final User user;
  final String prompt;

  const GenerateImages({
    required this.user,
    required this.prompt,
  });

  @override
  List<Object> get props => [
        user,
        prompt,
      ];
}
