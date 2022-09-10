import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';
import 'package:tdd/core/di/configure_dependencies.dart';
import 'package:tdd/core/platform/connection_status.dart';
import 'package:tdd/core/platform/environment_config.dart';
import 'package:tdd/core/utilities/utilities.dart';
import 'package:tdd/main_production.dart';
import 'package:tdd/main_staging.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ),
  );


  // await Hive.initFlutter();

  // register our service locator
  configureDependencies();

  // Setup logger, only show warning and higher in release mode.
  if (kReleaseMode) {
    Logger.level = Level.warning;
  } else {
    Logger.level = Level.debug;
  }

  // setup storage path
  // HydratedBloc.storage = await HydratedStorage.build(
  //   storageDirectory: await getApplicationDocumentsDirectory(),
  // );

  // initialize connection listener
  ConnectionStatusSingleton.getInstance().initialize();

  StatelessWidget? app;

  // if (EnvironmentConfig.ENVIRONMENT_VAR == 'STAGING') {
    app = getStaging();
  // } else if (EnvironmentConfig.ENVIRONMENT_VAR == 'PRODUCTION') {
  //   app = getProdApp();
  // }

  // setup loader configs
  configLoading();

  runApp(app);
}
