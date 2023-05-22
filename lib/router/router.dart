import 'package:auto_route/auto_route.dart';
import 'package:routing/main.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(path: '/bottom', page: BottomNavigationBarExampleRoute.page, initial: true),
  ];
}