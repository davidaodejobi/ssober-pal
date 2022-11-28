import 'package:addictionsupportroom/routes/error404.dart';
import 'package:addictionsupportroom/view/shared/main_screen.dart';
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
      builder: (context, state) => const MainScreen(),
    ),
  ],
  errorBuilder: (context, state) => const Error404Screen(),
);
