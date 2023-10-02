
import 'package:auto_route/auto_route.dart';
import 'package:rout/routes/router.gr.dart';


@AutoRouterConfig()
class AppRouter extends $AppRouter{

  @override

  List<AutoRoute> get routes => [
    AutoRoute(page: RouteA.page,initial: true),
    AutoRoute(page: StateB.page),
    AutoRoute(page: Screenc.page)

  ];

}