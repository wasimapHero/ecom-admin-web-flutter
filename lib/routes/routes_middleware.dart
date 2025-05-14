import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_by_flutter_ecom_admin/routes/route.dart';

class TRouteMiddleware extends GetMiddleware{

  @override
  RouteSettings? redirect(String? route) {
    // TODO: implement redirect
    print('-------------------------Middleware called-------------------------');
    bool isAuthenticated = true;

    return isAuthenticated ? null : RouteSettings(name: TRoutes.firstScreen) ;
  }
}