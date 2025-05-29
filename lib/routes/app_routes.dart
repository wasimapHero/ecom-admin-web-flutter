import 'package:get/get.dart';
import 'package:web_by_flutter_ecom_admin/app.dart';
import 'package:web_by_flutter_ecom_admin/features/authentication/screens/dashboard/dashboard.dart';
import 'package:web_by_flutter_ecom_admin/features/authentication/screens/forget_password/forget_password.dart';
import 'package:web_by_flutter_ecom_admin/features/authentication/screens/login/login.dart';
import 'package:web_by_flutter_ecom_admin/features/authentication/screens/reset_password/reset_password.dart';
import 'package:web_by_flutter_ecom_admin/routes/route.dart';
import 'package:web_by_flutter_ecom_admin/routes/routes_middleware.dart';

class TAppRoute {

  static final List<GetPage> pages = [
    GetPage(name: TRoutes.firstScreen, page: () => FirstScreen(), ),
    GetPage(name: TRoutes.secondScreen, page: () => SecondScreen(), ),
    // for direct value in urls
    GetPage(name: TRoutes.secondScreenWithDirectParameters, page: () => SecondScreen(), ),
    GetPage(name: TRoutes.responsiveDesignPageScreen, page: () => ResponsiveDesignPage(), ),
    GetPage(name: TRoutes.login, page: () => LoginScreen(), ),
    GetPage(name: TRoutes.forgetPassword, page: () => ForgetPasswordScreen(), ),
    GetPage(name: TRoutes.resetPassword, page: () => ResetPasswordScreeen(), ),
    GetPage(name: TRoutes.dashboard, page: () => DashboardScreen(), middlewares: [TRouteMiddleware()]),

  ];
}