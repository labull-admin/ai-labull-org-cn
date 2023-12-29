import 'package:ai.labull.org.cn/routers/routes_name.dart';
import 'package:ai.labull.org.cn/screens/gallery_screen/gallery_screen.dart';
import 'package:ai.labull.org.cn/screens/home_screen.dart';
import 'package:ai.labull.org.cn/screens/tasks_screen/image_generation_screen/image_generation_screen.dart';
import 'package:ai.labull.org.cn/screens/tasks_screen/image_generation_screen/image_generation_settings_screen.dart';
import 'package:ai.labull.org.cn/screens/tasks_screen/image_variation_screen/image_variation_screen.dart';
import 'package:ai.labull.org.cn/screens/tasks_screen/image_variation_screen/image_variation_settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AppRouter {
  // final ImageGenerationBloc imageGenerationBloc = ImageGenerationBloc();
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case imageGenerationRoute:
        return MaterialPageRoute(
          builder: (_) => const ImageGenerationScreen(),
        );
      case imageGenerationSettingsRoute:
        return MaterialPageRoute(
          builder: (_) => const ImageGenerationSettingsScreen(),
        );
      case imageVariationRoute:
        return MaterialPageRoute(builder: (context) {
          final image = settings.arguments as XFile?;
          return ImageVariationScreen(image: image);
        });
      case imageVariationSettingsRoute:
        return MaterialPageRoute(
          builder: (_) => const ImageVariationSettingsScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Center(
            child: Text('404'),
          ),
        );
    }
  }

  // dispose() {
  //   imageGenerationBloc.close();
  // }
}
