import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnvioParametrosHome extends StatelessWidget {

  const EnvioParametrosHome({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Envio de Parâmetros Home'),),
           body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  //Envio de String
                  //Get.toNamed('/envioParametros/arguments', arguments: 'Parâmetro enviado pelo arguments');
                  
                  //Envio de Mapa
                  Get.toNamed('/envioParametros/arguments', 
                  arguments: {
                    'curso': 'Jornada Dart',
                    'name': 'Carlos Erig',  
                  },
                  );
                }, child: const Text('arguments'),),
                
                ElevatedButton(onPressed: () {
                  //Get.toNamed('/envioParametros/pathParam/CarlosErig/jornadaGetX');
                  final param = Uri.encodeFull('Carlos Erig');
                  Get.toNamed('/envioParametros/pathParam/$param/jornadaGetX');
                }, child: const Text('Path Param'),),
                
                ElevatedButton(onPressed: () {
                  Get.toNamed('/envioParametros/queryParam?nome=Carlos Erig&id=1&curso=Jornada GetX');
                }, child: const Text('Query Param'),),
              ],
            ),
           ),
       );
  }
}