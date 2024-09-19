// import 'dart:io';

import 'package:ai.labull.org.cn/logic/logic.dart';
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

  runApp(
    const MyApp());
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
