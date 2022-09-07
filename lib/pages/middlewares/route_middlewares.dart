import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteMiddlewares extends GetMiddleware {
  RouteMiddlewares({super.priority});

  @override
  GetPage? onPageCalled(GetPage? page) {
    // TODO: implement onPageCalled
    debugPrint('Executando middleware onPageCalled');
    return super.onPageCalled(page);
  }

  @override
  Widget onPageBuilt(Widget page) {
    // TODO: implement onPageBuilt
    debugPrint('Executando middleware onPageBuilt');
    return Theme(
      data: ThemeData.dark(), 
      child: page);
  }

  @override
  RouteSettings? redirect(String? route) {
    // TODO: implement redirect
    if (route == '/middlewares'){
      return RouteSettings(
        name: '/accessDenied'
      );
    }
    return null;
  }

  @override
  void onPageDispose() {
    // TODO: implement onPageDispose
    debugPrint('Executando middleware onPageDispose');
    super.onPageDispose();
  }

  @override
  List<Bindings>? onBindingsStart(List<Bindings>? bindings) {
    // TODO: implement onBindingsStart
     debugPrint('Executando middleware onBindingsStart');
    return super.onBindingsStart(bindings);
  }

  @override
  GetPageBuilder? onPageBuildStart(GetPageBuilder? page) {
    // TODO: implement onPageBuildStart
    debugPrint('Executando middleware onPageBuildStart');
    return super.onPageBuildStart(page);
  }
}