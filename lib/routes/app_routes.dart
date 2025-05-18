import 'package:get/get.dart';
import 'package:web_by_flutter_ecom_admin/app.dart';
import 'package:web_by_flutter_ecom_admin/features/authentication/screens/login/login.dart';
import 'package:web_by_flutter_ecom_admin/routes/route.dart';
import 'package:web_by_flutter_ecom_admin/routes/routes_middleware.dart';

class TAppRoute {

  static final List<GetPage> pages = [
    GetPage(name: TRoutes.firstScreen, page: () => FirstScreen(), middlewares: [TRouteMiddleware()]),
    GetPage(name: TRoutes.secondScreen, page: () => SecondScreen(), middlewares: [TRouteMiddleware()]),
    // for direct value in urls
    GetPage(name: TRoutes.secondScreenWithDirectParameters, page: () => SecondScreen(), middlewares: [TRouteMiddleware()]),
    GetPage(name: TRoutes.responsiveDesignPageScreen, page: () => ResponsiveDesignPage(), middlewares: [TRouteMiddleware()]),
    GetPage(name: TRoutes.login, page: () => LoginScreen(), middlewares: [TRouteMiddleware()]),

  ];
}