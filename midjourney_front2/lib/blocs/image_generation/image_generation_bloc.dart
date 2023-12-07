import 'dart:math';

import 'package:ai.labull.org.cn/blocs/bloc_exports.dart';
import 'package:ai.labull.org.cn/models/image_generation/image_generation.dart';
import 'package:ai.labull.org.cn/models/user/user.dart';
import 'package:ai.labull.org.cn/utils/api_utils/backend_api_utils/openai_interface.dart';
import 'package:flutter/widgets.dart';
import './image_generation_type.dart';
import 'package:equatable/equatable.dart';

import '../../models/image_generation_settings/image_generation_settings.dart';
import './image_generation_state/image_generation_state.dart';
part 'image_generation_event.dart';

class ImageGenerationBloc
    extends HydratedBloc<ImageGenerationEvent, ImageGenerationState> {
  ImageGenerationBloc() : super(ImageGenerationStateInitial()) {
    on<ImageGenerationSettingsChange>(
      (event, emit) {
        // print(state);
        try {
          emit(ImageGenerationStateSettingsChangedProgress(
              imageGenerationSettings: event.imageGenerationSettings.copyWith(),
              imageGenerations:
                  state.imageGenerations.map((e) => e.copyWith()).toList()));
          emit(ImageGenerationStateSettingsChangedSuccess(
              imageGenerationSettings: event.imageGenerationSettings.copyWith(),
              imageGenerations:
                  state.imageGenerations.map((e) => e.copyWith()).toList()));
        } catch (e) {
          emit(ImageGenerationStateSettingsChangedFailure(
              imageGenerationSettings: state.imageGenerationSettings,
              imageGenerations:
                  state.imageGenerations.map((e) => e.copyWith()).toList()));
        }
      },
    );
    on<GenerateImages>(
      (event, emit) async {
        // print(state);
        try {
          emit(ImageGenerationStateGenerateImageInitial(
              imageGenerationSettings: state.imageGenerationSettings,
              imageGenerations:
                  state.imageGenerations.map((e) => e.copyWith()).toList()));

          emit(ImageGenerationStateGenerateImageProgress(
              imageGenerationSettings: state.imageGenerationSettings,
              imageGenerations:
                  state.imageGenerations.map((e) => e.copyWith()).toList()));

          // Generate the images.
          ImageGeneration imageGeneration = await _generateImages(
              user: event.user,
              prompt: event.prompt,
              imageGenerationSettings: state.imageGenerationSettings);
          // Create a new list from the current state's imageGenerations.
          List<ImageGeneration> updatedImageGenerations =
              state.imageGenerations.map((e) => e.copyWith()).toList();

          // Check if there are 10 or more image generations already.
          if (updatedImageGenerations.length >= 10) {
            // If there are, remove the oldest one (at index 0).
            updatedImageGenerations.removeAt(0);
          }
          updatedImageGenerations.add(imageGeneration);

          emit(ImageGenerationStateGenerateImageSuccess(
              imageGenerationSettings: state.imageGenerationSettings,
              imageGenerations: updatedImageGenerations));
        } catch (e) {
          emit(
            ImageGenerationStateGenerateImageFailure(
              imageGenerationSettings: state.imageGenerationSettings,
              imageGenerations:
                  state.imageGenerations.map((e) => e.copyWith()).toList(),
              error: e.toString(),
            ),
          );
        }
      },
    );
  }

  @override
  ImageGenerationState fromJson(Map<String, dynamic> json) {
    // print("fromJson");
    switch (json['stateType']) {
      case imageGenerationStateInitialType:
        // print('imageGenerationStateSettingsChangedInitialType');
        // print(json);
        // print(ImageGenerationStateSettingsChangedSuccess.fromMap(json));
        return ImageGenerationStateInitial.fromMap(json);
      case imageGenerationStateSettingsChangedSuccessType:
        // print('imageGenerationStateSettingsChangedSuccessType');
        // print(json);
        // print(ImageGenerationStateSettingsChangedSuccess.fromMap(json));
        return ImageGenerationStateSettingsChangedSuccess.fromMap(json);
      case imageGenerationStateSettingsChangedFailureType:
        // print('imageGenerationStateSettingsChangedFailureType');
        // print(json);
        // print(ImageGenerationStateSettingsChangedSuccess.fromMap(json));
        return ImageGenerationStateSettingsChangedFailure.fromMap(json);
      default:
        // print('default');
        // print(json);
        // print(ImageGenerationStateSettingsChangedSuccess.fromMap(json));
        throw Exception("Invalid state type");
    }
  }

  @override
  Map<String, dynamic> toJson(ImageGenerationState state) {
    // print("toJson");
    // print(state);
    // print(state.toMap());
    return state.toMap();
  }

  Future<ImageGeneration> _generateImages({
    required User user,
    required String prompt,
    required ImageGenerationSettings imageGenerationSettings,
  }) async {
    try {
      ImageGeneration imageGeneration = await openaiImageGenerate(
        user: user,
        model: imageGenerationSettings.model,
        prompt: prompt,
        size: imageGenerationSettings.size,
        quality: imageGenerationSettings.quality,
        n: imageGenerationSettings.n,
      );
      return imageGeneration;
    } catch (e) {
      rethrow;
    }
  }
}
