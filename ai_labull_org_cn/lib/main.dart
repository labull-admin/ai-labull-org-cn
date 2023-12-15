// import 'dart:io';

import 'package:ai.labull.org.cn/blocs/gallery/gallery_bloc.dart';
import 'package:ai.labull.org.cn/router/app_router.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'package:ai.labull.org.cn/router/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import './blocs/bloc_exports.dart';
import 'package:ai.labull.org.cn/.env/env.dart'
    show CURRENT_STAGE, DEV_STAGE, PROD_STAGE;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // save common env variables as a Map<String, String>
  await dotenv.load(fileName: "lib/.env/.env.common");
  Map<String, String> envVars = Map.from(dotenv.env);
  if (CURRENT_STAGE == PROD_STAGE) {
    await dotenv.load(fileName: "lib/.env/.env.prod", mergeWith: envVars);
  } else if (CURRENT_STAGE == DEV_STAGE) {
    await dotenv.load(fileName: "lib/.env/.env.dev", mergeWith: envVars);
  } else {
    throw Exception(
        'CURRENT_STAGE env variable is not set to either $DEV_STAGE or $PROD_STAGE');
  }

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );

  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(
            create: (context) => AuthBloc(),
          ),
          BlocProvider<ImageGenerationBloc>(
            create: (context) => ImageGenerationBloc(),
          ),
          BlocProvider<ImageVariationBloc>(
              create: (context) => ImageVariationBloc()),
          BlocProvider<GalleryBloc>(create: (context) => GalleryBloc())

          // add more bloc providers here as needed
        ],
        child: MaterialApp(
          onGenerateRoute: (settings) => AppRouter().onGenerateRoute(settings),
          initialRoute: homeRoute,
          theme: ThemeData(
            brightness: Brightness.dark,
            primarySwatch: Colors.brown,
          ),
        ));
  }
}
