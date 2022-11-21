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
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../testingpage.dart' as _i1;
import 'error404.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    Testing.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.TestPage(),
      );
    },
    Error404.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.Error404Screen(),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          Testing.name,
          path: '/',
        ),
        _i3.RouteConfig(
          Error404.name,
          path: '/error404',
        ),
        _i3.RouteConfig(
          '*#redirect',
          path: '*',
          redirectTo: '/error404',
          fullMatch: true,
        ),
      ];
}

/// generated route for
/// [_i1.TestPage]
class Testing extends _i3.PageRouteInfo<void> {
  const Testing()
      : super(
          Testing.name,
          path: '/',
        );

  static const String name = 'Testing';
}

/// generated route for
/// [_i2.Error404Screen]
class Error404 extends _i3.PageRouteInfo<void> {
  const Error404()
      : super(
          Error404.name,
          path: '/error404',
        );

  static const String name = 'Error404';
}
