import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:universal_html/html.dart' as html;

abstract class ImageVariationLogic {
  Future<bool> isImageSquare({required XFile image});
}

class WebImageVariationLogic implements ImageVariationLogic {
  @override
  Future<bool> isImageSquare({required XFile image}) async {
    final img = html.ImageElement(src: image.path);
    bool isSquare = false;
    await img.onLoad.first.then((_) {
      if (img.width == img.height) {
        isSquare = true;
      }
    });
    return isSquare;
  }
}

// Step 2: Implement platform-specific code for Android
class AndroidImageVariationLogic implements ImageVariationLogic {
  @override
  Future<bool> isImageSquare({required XFile image}) async {
    return false;
  }
}

// // Implement platform-specific code for iOS
// class IOSImageVariationLogic implements ImageVariationLogic {
//   @override
//   bool isImageSquare() {
//     return true;
//   }
// }

void registerImageVariationLogic(GetIt getIt) {
  getIt.registerLazySingleton<ImageVariationLogic>(() {
    if (kIsWeb) {
      return WebImageVariationLogic();
    } else {
      throw UnimplementedError();
    }
  });
}
