import 'package:addictionsupportroom/routes/error404.dart';
import 'package:addictionsupportroom/testingpage.dart';
import 'package:addictionsupportroom/view/account/home.dart';
import 'package:auto_route/auto_route.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: TestPage, name: "testing", path: "/", initial: true),
    MaterialRoute(page: Error404Screen, name: "error404", path: "/error404"),
    // MaterialRoute(page: AccountHome, name: "AccountHome", path: "/account"),
//UnknownRoutePage here
    RedirectRoute(
      path: '*',
      redirectTo: '/error404',
    ),
  ],
  replaceInRouteName: 'Page,Route,Screen',
)
class $AppRouter {}
