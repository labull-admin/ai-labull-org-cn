part of 'image_variation_bloc.dart';

sealed class ImageVariationEvent extends Equatable {
  const ImageVariationEvent();

  @override
  List<Object> get props => [];
}

class ImageVariationSettingsChange extends ImageVariationEvent {
  final ImageVariationSettings imageVariationSettings;

  const ImageVariationSettingsChange({required this.imageVariationSettings});

  @override
  List<Object> get props => [imageVariationSettings];
}

class VariateImages extends ImageVariationEvent {
  final User user;

  final XFile image;

  const VariateImages({
    required this.user,
    required this.image,
  });

  @override
  List<Object> get props => [
        user,
        image,
      ];
}
