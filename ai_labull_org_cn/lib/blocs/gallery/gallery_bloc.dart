import 'package:ai.labull.org.cn/blocs/gallery/gallery_state/gallery_state.dart';
import 'package:ai.labull.org.cn/blocs/gallery/gallery_type.dart';
import 'package:ai.labull.org.cn/blocs/bloc_exports.dart';
import 'package:ai.labull.org.cn/models/image_generation/image_generation.dart';
import 'package:ai.labull.org.cn/models/image_variation/image_variation.dart';
import 'package:ai.labull.org.cn/models/user/user.dart';
import 'package:ai.labull.org.cn/utils/api_utils/backend_api_utils/openai_interface.dart';

import 'package:equatable/equatable.dart';

part 'gallery_event.dart';

class GalleryBloc extends HydratedBloc<GalleryEvent, GalleryState> {
  GalleryBloc() : super(const GalleryStateInitial()) {
    on<LoadImages>(_onLoadImages);
  }
  void _onLoadImages(LoadImages event, Emitter<GalleryState> emit) async {
    emit(GalleryStateLoadImagesInitial(
        imageGeneration:
            state.imageGeneration.map((e) => e.copyWith()).toList(),
        imageVariation:
            state.imageVariation.map((e) => e.copyWith()).toList()));
    try {
      emit(GalleryStateLoadImagesProgress(
          imageGeneration:
              state.imageGeneration.map((e) => e.copyWith()).toList(),
          imageVariation:
              state.imageVariation.map((e) => e.copyWith()).toList()));
      List<ImageGeneration> imageGenerations =
          await getImageGenerationListForGallery(
              user: event.user, pageSize: event.pageSize);
      List<ImageVariation> imageVariations =
          await getImageVariationListForGallery(
              user: event.user, pageSize: event.pageSize);
      emit(GalleryStateLoadImagesSuccess(
        imageGeneration: imageGenerations,
        imageVariation: imageVariations,
      ));
    } catch (e) {
      emit(GalleryStateLoadImagesFailure(
          imageGeneration:
              state.imageGeneration.map((e) => e.copyWith()).toList(),
          imageVariation:
              state.imageVariation.map((e) => e.copyWith()).toList(),
          error: e.toString()));
    }
  }

  @override
  GalleryState? fromJson(Map<String, dynamic> json) {
    switch (json['stateType']) {
      case galleryStateInitialType:
        return GalleryStateInitial.fromMap(json);
      case galleryStateLoadImagesInitialType:
        return GalleryStateLoadImagesInitial.fromMap(json);
      case galleryStateLoadImagesProgressType:
        return GalleryStateLoadImagesProgress.fromMap(json);
      case galleryStateLoadImagesSuccessType:
        return GalleryStateLoadImagesSuccess.fromMap(json);
      case galleryStateLoadImagesFailureType:
        return GalleryStateLoadImagesFailure.fromMap(json);
      default:
        throw ('Unknown state type');
    }
  }

  @override
  Map<String, dynamic>? toJson(GalleryState state) {
    return state.toMap();
  }
}
