import 'package:addictionsupportroom/routes/error404.dart';
import 'package:addictionsupportroom/testpage/tchildpagetwo.dart';
import 'package:addictionsupportroom/testpage/tchildpgone.dart';
import 'package:addictionsupportroom/testpage/testingpage.dart';
import 'package:addictionsupportroom/testpage/tpagetwo.dart';
import 'package:go_router/go_router.dart';

/// The route configuration.
final GoRouter router = GoRouter(
  //To enable log output, enable the debugLogDiagnostics parameter:
  debugLogDiagnostics: true,
  initialLocation: "/",
  routes: [
    //single nav
    GoRoute(
       name: 'home',
      path: "/",
      builder: (context, state) => const TestPage(),
    ),
    //nested child nav
    GoRoute(
       name: 'testtwo',
        path: "/testtwo",
        builder: (context, state) => const TestPagetwo(),
        routes: [
          GoRoute(
              name: 'settings',
            path: "settings",
            builder: (context, state) => const TestcPageone(),
          ),
          GoRoute(
              name: 'mypage',
            path: "mypage",
            builder: (context, state) => const TestcPagetwo(),
          ),
        ])
  ],
  errorBuilder: (context, state) => const Error404Screen(),
);
