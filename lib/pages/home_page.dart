import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_iniciando/pages/page1.dart';
import 'package:get_iniciando/pages/page2.dart';

class HomePage extends StatelessWidget {

  const HomePage({ Key? key }) : super(key: key);

  @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Home Page'),),
           body: Center(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/page1');
                  }, 
                  child: const Text('Page1')
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/page2');
                  }, 
                  child: const Text('Page2')
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/envioParametros');
                  }, 
                  child: const Text('Envio Parâmetros')
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/middlewares');
                  }, 
                  child: const Text('Middlewares')
                ),
              ],
            ),
           ),
       );
  }
}