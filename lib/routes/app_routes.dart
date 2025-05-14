import 'package:get/get.dart';
import 'package:web_by_flutter_ecom_admin/app.dart';
import 'package:web_by_flutter_ecom_admin/routes/route.dart';
import 'package:web_by_flutter_ecom_admin/routes/routes_middleware.dart';

class TAppRoute {

  static final List<GetPage> pages = [
    GetPage(name: TRoutes.firstScreen, page: () => FirstScreen(), middlewares: [TRouteMiddleware()]),
    GetPage(name: TRoutes.secondScreen, page: () => SecondScreen(), middlewares: [TRouteMiddleware()]),
    // for direct value in urls
    GetPage(name: TRoutes.secondScreenWithDirectParameters, page: () => SecondScreen()),
    // GetPage(name: '/second-screen', page: () => SecondScreen()),

  ];
}