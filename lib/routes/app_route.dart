import 'package:addictionsupportroom/view/intro_screen.dart';
import 'package:addictionsupportroom/view/notifications/screens/notifications_screen.dart';
import 'package:addictionsupportroom/view/progress_section/screen_two.dart';
import 'package:addictionsupportroom/routes/error404.dart';
import 'package:addictionsupportroom/view/shared/main_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:addictionsupportroom/profile_screen/profile_section_screen_one.dart';

final router = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: "/",
  routes: [
    GoRoute(
      name: 'onboarding',
      path: "/",
      builder: (context, state) => const IntroScreen(),
    ),
    GoRoute(
      name: 'home',
      path: "/home",
      builder: (context, state) => const MainScreen(),
    ),
    // Profile Setup
    GoRoute(
      name: 'setup',
      path: "/setup",
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      name: "notifications",
      path: "/notifications",
      builder: (context, state) => const NotificationScreen(),
    ),
    GoRoute(
      name: "screen_two",
      path: '/screen_two',
      builder: (context, state) => const ScreenTwo(),
    ),
  ],
  errorBuilder: (context, state) => const Error404Screen(),
);
