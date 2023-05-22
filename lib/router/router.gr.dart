// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    BottomNavigationBarExampleRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BottomNavigationBarExampleScreen(),
      );
    }
  };
}

/// generated route for
/// [BottomNavigationBarExampleScreen]
class BottomNavigationBarExampleRoute extends PageRouteInfo<void> {
  const BottomNavigationBarExampleRoute({List<PageRouteInfo>? children})
      : super(
          BottomNavigationBarExampleRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavigationBarExampleRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
