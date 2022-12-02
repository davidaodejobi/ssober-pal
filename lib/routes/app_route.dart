import 'package:addictionsupportroom/model/user_model.dart';
import 'package:addictionsupportroom/view/auth_flow/screens/continue_to_homescreen.dart';
import 'package:addictionsupportroom/view/chat/screens/call_a_member.dart';
import 'package:addictionsupportroom/view/chat/screens/chat_profile.dart';
import 'package:addictionsupportroom/view/chat/screens/indivdual_chat.dart';
import 'package:addictionsupportroom/view/notifications/screens/notifications_screen.dart';
import 'package:addictionsupportroom/view/onboarding_screen/screens/onboarding_screen.dart';
import 'package:addictionsupportroom/view/progress_section/screen_two.dart';
import 'package:addictionsupportroom/routes/error404.dart';
import 'package:addictionsupportroom/view/shared/main_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:addictionsupportroom/view/auth_flow/screens/profile_section_screen_one.dart';

final homeRouter = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: "/",
  routes: [
    GoRoute(
      name: "main_screen",
      path: '/',
      builder: (context, state) => const MainScreen(),
      routes: <RouteBase>[
        GoRoute(
          path: 'profile_chat',
          builder: (context, state) => const ChatProfile(),
        ),
        GoRoute(
          path: 'individual_chat',
          builder: (context, state) => IndivdualChat(
            receiver: state.extra as UserModel,
          ),
        ),
        GoRoute(
          path: 'call_a_member',
          builder: (context, state) => const CallAMemeber(),
        ),
      ],
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

final onBoardingRouter = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: "/main_screen",
  routes: [
    GoRoute(
      name: 'onboarding',
      path: "/",
      builder: (context, state) => OnbaordingScreen(),
    ),
    GoRoute(
      name: 'setup',
      path: "/setup",
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      name: "continue_to_homescreen",
      path: "/continue_to_homescreen",
      builder: (context, state) => const ContinueToHomescreen(),
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
          builder: (context, state) => IndivdualChat(
            receiver: state.extra as UserModel,
          ),
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

final signuoRouter = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: "/main_screen",
  routes: [
    GoRoute(
      name: 'setup',
      path: "/",
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      name: "continue_to_homescreen",
      path: "/continue_to_homescreen",
      builder: (context, state) => const ContinueToHomescreen(),
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
          builder: (context, state) => IndivdualChat(
            receiver: state.extra as UserModel,
          ),
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
