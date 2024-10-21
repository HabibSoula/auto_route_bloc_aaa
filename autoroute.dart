import 'package:auto_route/auto_route.dart';
import 'autoroute.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|View,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
  
AutoRoute(page:HomeRoute.page),

AutoRoute(page:ProfileRoute.page),

AutoRoute(page:LoginRoute.page),

];
}
