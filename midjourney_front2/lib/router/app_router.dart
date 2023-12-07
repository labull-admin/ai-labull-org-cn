import 'package:ai.labull.org.cn/blocs/bloc_exports.dart';
import 'package:ai.labull.org.cn/router/routes_name.dart';
import 'package:ai.labull.org.cn/screens/home_screen.dart';
import 'package:ai.labull.org.cn/screens/tasks_screen/image_generation_screen/image_generation_screen.dart';
import 'package:ai.labull.org.cn/screens/tasks_screen/image_generation_screen/image_generation_settings_screen.dart';
import 'package:flutter/material.dart';

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
