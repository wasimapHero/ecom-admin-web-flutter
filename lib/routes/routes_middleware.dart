import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_by_flutter_ecom_admin/data/repositories/authentication/authentication_repository.dart';
import 'package:web_by_flutter_ecom_admin/routes/route.dart';

class TRouteMiddleware extends GetMiddleware{

  @override
  RouteSettings? redirect(String? route) {
    // TODO: implement redirect
    print('${AuthenticationRepository.instance.IsAuthenticated}');
    // bool IsAuthenticated = true;

    return AuthenticationRepository.instance.IsAuthenticated ? null : RouteSettings(name: TRoutes.login) ;
  }
}