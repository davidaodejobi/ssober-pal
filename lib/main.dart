import 'package:addictionsupportroom/controller/home/feelings_controller.dart';
import 'package:addictionsupportroom/controller/chat/tab_bar_controller.dart';
import 'package:addictionsupportroom/util/color.dart';
import 'package:addictionsupportroom/routes/app_route.dart';

import 'package:addictionsupportroom/controller/home/note_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => FeelingsController()),
        ChangeNotifierProvider<TabBarController>(
            create: (context) => TabBarController()),
        ChangeNotifierProvider<TabBarController>(
            create: (context) => TabBarController()),
        ChangeNotifierProvider(create: (context) => NoteProvider()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(
          375.0,
          812.0,
        ),
        builder: (context, index) => MaterialApp.router(
          routeInformationProvider: router.routeInformationProvider,
          routeInformationParser: router.routeInformationParser,
          routerDelegate: router.routerDelegate,
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
        ),
      ),
    );
  }
}
