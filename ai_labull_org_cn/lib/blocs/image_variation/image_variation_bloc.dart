import 'package:ai.labull.org.cn/blocs/image_variation/image_variation_state/image_variation_state.dart';
import 'package:ai.labull.org.cn/blocs/image_variation/image_variation_type.dart';
import 'package:ai.labull.org.cn/models/image_variation/image_variation.dart';
import 'package:ai.labull.org.cn/models/image_variation_settings/image_variation_settings.dart';
import 'package:ai.labull.org.cn/models/user/user.dart';
import 'package:ai.labull.org.cn/utils/api_utils/backend_api_utils/openai_interface.dart';
export 'package:flutter_bloc/flutter_bloc.dart';
export 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:image_picker/image_picker.dart';

part 'image_variation_event.dart';

class ImageVariationBloc
    extends HydratedBloc<ImageVariationEvent, ImageVariationState> {
  ImageVariationBloc() : super(ImageVariationStateInitial()) {
    on<ImageVariationSettingsChange>(_onImageVariationSettingsChange);
    on<VariateImages>(_onVariateImages);
  }
  void _onImageVariationSettingsChange(
      ImageVariationSettingsChange event, Emitter<ImageVariationState> emit) {
    try {
      emit(ImageVariationStateSettingsChangedProgress(
          imageVariationSettings: event.imageVariationSettings.copyWith(),
          imageVariations:
              state.imageVariations.map((e) => e.copyWith()).toList()));
      emit(ImageVariationStateSettingsChangedSuccess(
          imageVariationSettings: event.imageVariationSettings.copyWith(),
          imageVariations:
              state.imageVariations.map((e) => e.copyWith()).toList()));
    } catch (e) {
      emit(ImageVariationStateSettingsChangedFailure(
          imageVariationSettings: state.imageVariationSettings,
          imageVariations:
              state.imageVariations.map((e) => e.copyWith()).toList()));
    }
  }

  void _onVariateImages(
      VariateImages event, Emitter<ImageVariationState> emit) async {
    try {
      emit(ImageVariationStateVariateImageInitial(
          imageVariationSettings: state.imageVariationSettings,
          imageVariations:
              state.imageVariations.map((e) => e.copyWith()).toList()));

      emit(ImageVariationStateVariateImageProgress(
          imageVariationSettings: state.imageVariationSettings,
          imageVariations:
              state.imageVariations.map((e) => e.copyWith()).toList()));
      // Variate the images.
      ImageVariation imageVariation = await _variateImages(
          user: event.user,
          originalImage: event.image,
          imageVariationSettings: state.imageVariationSettings);
      // Create a new list from the current state's imageVariations.
      List<ImageVariation> updatedImageVariations =
          state.imageVariations.map((e) => e.copyWith()).toList();

      // Check if there are 10 or more image generations already.
      if (updatedImageVariations.length >= 10) {
        // If there are, remove the oldest one (at index 0).
        updatedImageVariations.removeAt(0);
      }
      updatedImageVariations.add(imageVariation);

      emit(ImageVariationStateVariateImageSuccess(
          imageVariationSettings: state.imageVariationSettings,
          imageVariations: updatedImageVariations));
    } catch (e) {
      emit(
        ImageVariationStateVariateImageFailure(
          imageVariationSettings: state.imageVariationSettings,
          imageVariations:
              state.imageVariations.map((e) => e.copyWith()).toList(),
          error: e.toString(),
        ),
      );
    }
  }

  Future<ImageVariation> _variateImages({
    required User user,
    required XFile originalImage,
    required ImageVariationSettings imageVariationSettings,
  }) async {
    try {
      ImageVariation imageVariation = await openaiImageVariate(
        user: user,
        originalImage: originalImage,
        size: imageVariationSettings.size,
        n: imageVariationSettings.n,
      );
      return imageVariation;
    } catch (e) {
      rethrow;
    }
  }

  @override
  ImageVariationState fromJson(Map<String, dynamic> json) {
    // print("fromJson");
    switch (json['stateType']) {
      case imageVariationStateInitialType:
        // print('imageVariationStateSettingsChangedInitialType');
        // print(json);
        // print(ImageVariationStateSettingsChangedSuccess.fromMap(json));
        return ImageVariationStateInitial.fromMap(json);
      case imageVariationStateSettingsChangedSuccessType:
        // print('imageVariationStateSettingsChangedSuccessType');
        // print(json);
        // print(ImageVariationStateSettingsChangedSuccess.fromMap(json));
        return ImageVariationStateSettingsChangedSuccess.fromMap(json);
      case imageVariationStateSettingsChangedFailureType:
        // print('imageVariationStateSettingsChangedFailureType');
        // print(json);
        // print(ImageVariationStateSettingsChangedSuccess.fromMap(json));
        return ImageVariationStateSettingsChangedFailure.fromMap(json);
      default:
        // print('default');
        // print(json);
        // print(ImageVariationStateSettingsChangedSuccess.fromMap(json));
        throw Exception("Invalid state type");
    }
  }

  @override
  Map<String, dynamic> toJson(ImageVariationState state) {
    // print("toJson");

    // print(state.toMap());
    return state.toMap();
  }
}
