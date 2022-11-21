import 'package:addictionsupportroom/routes/error404.dart';
import 'package:addictionsupportroom/testingpage.dart';
import 'package:auto_route/auto_route.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: TestPage, path: "/", initial: true),
    AutoRoute(page: Error404Screen, path: "/error404"),
//UnknownRoutePage here
    RedirectRoute(
      path: '*',
      redirectTo: '/error404',
    ),
  ],
  replaceInRouteName: 'Page,Route,Screen',
)
class $AppRouter {}
