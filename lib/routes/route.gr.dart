// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../view/home/screens/dailey_notes.dart' as _i2;
import '../view/shared/main_screen.dart' as _i1;
import 'error404.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    Home.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MainScreen(),
      );
    },
    Daily_notes.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.DailyNotes(),
      );
    },
    Error404.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.Error404Screen(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          Home.name,
          path: '/',
        ),
        _i4.RouteConfig(
          Daily_notes.name,
          path: '/dailynotes',
        ),
        _i4.RouteConfig(
          Error404.name,
          path: '/error404',
        ),
        _i4.RouteConfig(
          '*#redirect',
          path: '*',
          redirectTo: '/error404',
          fullMatch: true,
        ),
      ];
}

/// generated route for
/// [_i1.MainScreen]
class Home extends _i4.PageRouteInfo<void> {
  const Home()
      : super(
          Home.name,
          path: '/',
        );

  static const String name = 'Home';
}

/// generated route for
/// [_i2.DailyNotes]
class Daily_notes extends _i4.PageRouteInfo<void> {
  const Daily_notes()
      : super(
          Daily_notes.name,
          path: '/dailynotes',
        );

  static const String name = 'Daily_notes';
}

/// generated route for
/// [_i3.Error404Screen]
class Error404 extends _i4.PageRouteInfo<void> {
  const Error404()
      : super(
          Error404.name,
          path: '/error404',
        );

  static const String name = 'Error404';
}
