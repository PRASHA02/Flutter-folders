// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:rout/main.dart' as _i1;
import 'package:rout/screens/screenB.dart' as _i3;
import 'package:rout/screens/screenC.dart' as _i2;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    RouteA.name: (routeData) {
      final args =
          routeData.argsAs<RouteAArgs>(orElse: () => const RouteAArgs());
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.ScreenA(key: args.key),
      );
    },
    Screenc.name: (routeData) {
      final args =
          routeData.argsAs<ScreencArgs>(orElse: () => const ScreencArgs());
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.screenc(key: args.key),
      );
    },
    StateB.name: (routeData) {
      final args =
          routeData.argsAs<StateBArgs>(orElse: () => const StateBArgs());
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.stateB(key: args.key),
      );
    },
  };
}

/// generated route for
/// [_i1.ScreenA]
class RouteA extends _i4.PageRouteInfo<RouteAArgs> {
  RouteA({
    _i5.Key? key,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          RouteA.name,
          args: RouteAArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'RouteA';

  static const _i4.PageInfo<RouteAArgs> page = _i4.PageInfo<RouteAArgs>(name);
}

class RouteAArgs {
  const RouteAArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'RouteAArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.screenc]
class Screenc extends _i4.PageRouteInfo<ScreencArgs> {
  Screenc({
    _i5.Key? key,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          Screenc.name,
          args: ScreencArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'Screenc';

  static const _i4.PageInfo<ScreencArgs> page = _i4.PageInfo<ScreencArgs>(name);
}

class ScreencArgs {
  const ScreencArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'ScreencArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.stateB]
class StateB extends _i4.PageRouteInfo<StateBArgs> {
  StateB({
    _i5.Key? key,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          StateB.name,
          args: StateBArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'StateB';

  static const _i4.PageInfo<StateBArgs> page = _i4.PageInfo<StateBArgs>(name);
}

class StateBArgs {
  const StateBArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'StateBArgs{key: $key}';
  }
}
