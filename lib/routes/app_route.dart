import 'package:addictionsupportroom/view/chat/screens/call_a_member.dart';
import 'package:addictionsupportroom/view/chat/screens/chat_profile.dart';
import 'package:addictionsupportroom/view/chat/screens/indivdual_chat.dart';
import 'package:addictionsupportroom/view/notifications/screens/notifications_screen.dart';
import 'package:addictionsupportroom/view/onboarding_screen/screens/onboarding_screen.dart';
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
      builder: (context, state) => OnbaordingScreen(),
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
    GoRoute(
      name: "main_screen",
      path: '/main_screen',
      builder: (context, state) => const MainScreen(),
      routes: <RouteBase>[
        GoRoute(
          path: 'profile_chat',
          builder: (context, state) => const ChatProfile(),
        ),
        GoRoute(
          path: 'individual_chat',
          builder: (context, state) => const IndivdualChat(),
        ),
        GoRoute(
          path: 'call_a_member',
          builder: (context, state) => const CallAMemeber(),
        ),
      ],
    ),
  ],
  errorBuilder: (context, state) => const Error404Screen(),
);
