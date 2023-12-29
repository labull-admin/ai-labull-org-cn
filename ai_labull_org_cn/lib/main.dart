// import 'dart:io';

import 'package:ai.labull.org.cn/routers/app_router.dart';

import 'package:ai.labull.org.cn/routers/routes_name.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import './blocs/bloc_exports.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );
  Bloc.observer = AppBlocObserver();
  await SentryFlutter.init((options) {
    options.environment = const bool.hasEnvironment('ENVIRONMENT')
        ? const String.fromEnvironment('ENVIRONMENT')
        : (throw ArgumentError('ENVIRONMENT is not set.'));
    options.dsn = const bool.hasEnvironment('SENTRY_DSN')
        ? const String.fromEnvironment('SENTRY_DSN')
        : (throw ArgumentError('SENTRY_DSN is not set.'));
    // Set tracesSampleRate to 1.0 to capture 100% of transactions for performance monitoring.
    // We recommend adjusting this value in production.
    options.tracesSampleRate = 1.0;
  }, appRunner: () {
    runApp(
      DefaultAssetBundle(
        bundle: SentryAssetBundle(),
        child: const MyApp(),
      ),
    );
  });
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
          navigatorObservers: [SentryNavigatorObserver()],
          onGenerateRoute: (settings) => AppRouter().onGenerateRoute(settings),
          initialRoute: homeRoute,
          theme: ThemeData(
            brightness: Brightness.dark,
            primarySwatch: Colors.brown,
          ),
        ));
  }
}
