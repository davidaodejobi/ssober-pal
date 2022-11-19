import 'package:addictionsupportroom/controller/home/feelings_controller.dart';
import 'package:addictionsupportroom/routes/route.gr.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'view/shared/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    // return MaterialApp.router(
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //   ),
    //   routerDelegate: appRouter.delegate(),
    //   routeInformationParser: appRouter.defaultRouteParser(),
    // );
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => FeelingsController())],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainScreen(),
      ),
    );
  }
}
