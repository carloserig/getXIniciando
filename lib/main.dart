import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_iniciando/pages/envio_parametros/arguments_param_page.dart';
import 'package:get_iniciando/pages/envio_parametros/envio_parametros_home.dart';
import 'package:get_iniciando/pages/envio_parametros/path_param_page.dart';
import 'package:get_iniciando/pages/envio_parametros/query_param_page.dart';
import 'package:get_iniciando/pages/home_page.dart';
import 'package:get_iniciando/pages/middlewares/acesso_negado.dart';
import 'package:get_iniciando/pages/middlewares/middlewares_home_page.dart';
import 'package:get_iniciando/pages/middlewares/route_middlewares.dart';
import 'package:get_iniciando/pages/page1.dart';
import 'package:get_iniciando/pages/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      //middleware geral
      routingCallback: (Routing? routing) {
        debugPrint(routing?.previous);
        debugPrint(routing?.previous);
      },
      getPages: [
        GetPage(name: '/', page: () => const HomePage()),
        GetPage(name: '/page1', page: () => Page1()),
        GetPage(name: '/page2', page: () => Page2()),
        GetPage(name: '/envioParametros', page: () => EnvioParametrosHome(),
        children: [
          GetPage(name: '/arguments', page: () => ArgumentsParamPage()),
          GetPage(name: '/pathParam/:nome/jornadaGetX', page: () => PathParamPage()),
          GetPage(name: '/queryParam', page: () => QueryParamPage()),
        ]),
        GetPage(
          name: '/middlewares', 
          page: () => MiddlewaresHomePage(),
          middlewares: [
            RouteMiddlewares()
          ]
        ),
        GetPage(
          name: '/accessDenied', 
          page: () => AcessoNegado()  
        )
      ],
    );
  }
}

