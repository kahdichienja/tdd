import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:tdd/core/data/network/config.dart';
import 'package:tdd/core/di/core_injector.dart';
import 'package:tdd/core/platform/cubit_providers.dart';
import 'package:tdd/core/platform/flavor_config.dart';
import 'package:tdd/core/utilities/nav_service_utils.dart';
import 'package:tdd/features/typicode_user/application/get_users_cubit.dart';
import 'package:tdd/features/typicode_user/presentation/pages/users.dart';

StatelessWidget getStaging() {
  FlavorConfig(
    flavor: Flavor.STAGING,
    values: FlavorValues(baseUrl: kStagingApiUrl),
  );

  return StagingApp();
}

class StagingApp extends StatelessWidget {
  StagingApp({Key? key}) : super(key: key);
  final _navigatorService = CoreInjector.resolve<NavigatorService>();

  @override
  Widget build(BuildContext context) {
    ;
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.black,
        systemNavigationBarIconBrightness: Brightness.light,
        statusBarColor: Colors.black,
        statusBarBrightness: Brightness.light,
        systemNavigationBarDividerColor: Colors.black,
        statusBarIconBrightness: Brightness.light,
      ),
    );

    return MultiBlocProvider(
      providers: providers,
      child: LayoutBuilder(
        builder: (context, constraints) => OrientationBuilder(
          builder: (context, orientation) {
            SizerUtil.setScreenSize(constraints, orientation);
            WidgetsBinding.instance.addPostFrameCallback((t) {
              context.read<GetUsersCubit>().getUsers();
            });
            return MaterialApp(
              title: 'Test Stage',
              debugShowCheckedModeBanner: false,
              // builder: EasyLoading.init(
              //   builder: (context, child) => MediaQuery(
              //     data: MediaQuery.of(context).copyWith(
              //       textScaleFactor: 1.0,
              //     ), //set desired text scale factor here
              //     child: Container(

              //     ),
              //   ),
              // ),
              theme: ThemeData(
                brightness: Brightness.light,
                visualDensity: VisualDensity.adaptivePlatformDensity,
                textTheme: GoogleFonts.ralewayTextTheme(),
                primaryColor: Colors.blue,
                fontFamily: GoogleFonts.raleway().fontFamily,
              ),
              home: const UsersScreen(),
              navigatorKey: _navigatorService.navigatorKey,
            );
          },
        ),
      ),
    );
  }
}
