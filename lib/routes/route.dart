import 'package:addictionsupportroom/routes/error404.dart';
import 'package:addictionsupportroom/view/home/screens/dailey_notes.dart';
import 'package:auto_route/auto_route.dart';

import '../view/shared/main_screen.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: MainScreen, name: "home", path: "/", initial: true),
    MaterialRoute(page: DailyNotes, name: "daily_notes", path: "/dailynotes"),
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
