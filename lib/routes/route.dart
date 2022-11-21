import 'package:addictionsupportroom/routes/error404.dart';
import 'package:addictionsupportroom/view/home/screens/dailey_notes.dart';
import 'package:addictionsupportroom/view/progress_section/screen_2.dart';
import 'package:auto_route/auto_route.dart';
import 'package:addictionsupportroom/testingpage.dart';
import 'package:addictionsupportroom//view/shared/main_screen.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: MainScreen, name: "home", path: "/", initial: true),
    MaterialRoute(page: DailyNotes, name: "daily_notes", path: "/dailynotes"),
    MaterialRoute(page: Error404Screen, name: "error404", path: "/error404"),
    MaterialRoute(page: ScreenTwo, name: "Progress_screentwo", path: "/Progress_screen_two"),
    RedirectRoute(
      path: '*',
      redirectTo: '/error404',
    ),
  ],
  replaceInRouteName: 'Page,Route,Screen',
)
class $AppRouter {}
