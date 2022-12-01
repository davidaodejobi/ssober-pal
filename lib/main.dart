// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

import 'package:addictionsupportroom/controller/chat/tab_bar_controller.dart';
import 'package:addictionsupportroom/controller/home/feelings_controller.dart';
import 'package:addictionsupportroom/controller/home/note_controller.dart';
import 'package:addictionsupportroom/controller/onboarding/onboarding_controller.dart';
import 'package:addictionsupportroom/locator.dart';
import 'package:addictionsupportroom/routes/app_route.dart';
import 'package:addictionsupportroom/services/services.dart';
import 'package:addictionsupportroom/util/color.dart';
import 'package:addictionsupportroom/util/constant/keys.dart';

HiveStorageService hiveStorageService = getIt<HiveStorageService>();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  await Hive.initFlutter();
  await Hive.openBox('settings');

  hiveStorageService.readItem(key: onBoarded).then(
    (value) {
      value ??= false;
      runApp(
        MyApp(
          isOnboarded: value,
        ),
      );
    },
  );
}

class MyApp extends StatelessWidget {
  final bool isOnboarded;
  const MyApp({
    Key? key,
    required this.isOnboarded,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => FeelingsController()),
        ChangeNotifierProvider<OnboardingController>(
            create: (context) => OnboardingController()),
        ChangeNotifierProvider<TabBarController>(
            create: (context) => TabBarController()),
        ChangeNotifierProvider(create: (context) => NoteProvider()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(
          375.0,
          812.0,
        ),
        builder: (context, index) => !isOnboarded
            ? AppRouter(
                rout: router,
              )
            : AppRouter(
                rout: onBoardingRouter,
              ),
      ),
    );
  }
}

class AppRouter extends StatelessWidget {
  final GoRouter rout;
  const AppRouter({
    Key? key,
    required this.rout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: rout.routeInformationProvider,
      routeInformationParser: rout.routeInformationParser,
      routerDelegate: rout.routerDelegate,
      builder: (context, widget) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: widget!,
        );
      },
      debugShowCheckedModeBanner: false,
      title: 'SoberPal',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColor.kDarkBlueColor,
          elevation: 0,
          centerTitle: true,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.kDarkBlueColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        primarySwatch: Colors.blue,
      ),
    );
  }
}
