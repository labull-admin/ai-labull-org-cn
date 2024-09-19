<<<<<<< Updated upstream:midjourney_front2/lib/router/app_router.dart
import 'package:ai.labull.org.cn/blocs/bloc_exports.dart';
import 'package:ai.labull.org.cn/router/routes_name.dart';
import 'package:ai.labull.org.cn/screens/home_screen.dart';
import 'package:ai.labull.org.cn/screens/tasks_screen/image_generation_screen/image_generation_screen.dart';
import 'package:ai.labull.org.cn/screens/tasks_screen/image_generation_screen/image_generation_settings_screen.dart';
=======
import 'package:ai.labull.org.cn/routers/routes_name.dart';
import 'package:ai.labull.org.cn/screens/home_screen.dart';
>>>>>>> Stashed changes:ai_labull_org_cn/lib/routers/app_router.dart
import 'package:flutter/material.dart';

class AppRouter {
  // final ImageGenerationBloc imageGenerationBloc = ImageGenerationBloc();
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
<<<<<<< Updated upstream:midjourney_front2/lib/router/app_router.dart
      case imageGenerationRoute:
        return MaterialPageRoute(
          builder: (_) =>
              // BlocProvider.value(
              //   value: imageGenerationBloc,
              // child:
              const ImageGenerationScreen(),
          // ),
        );
      case imageGenerationSettingsRoute:
        return MaterialPageRoute(
          builder: (_) =>
              // BlocProvider.value(
              //   value: imageGenerationBloc,
              // child:
              const ImageGenerationSettingsScreen(),
          // ),
        );
=======
>>>>>>> Stashed changes:ai_labull_org_cn/lib/routers/app_router.dart
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
