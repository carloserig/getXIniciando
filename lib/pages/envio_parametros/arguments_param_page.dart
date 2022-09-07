import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArgumentsParamPage extends StatelessWidget {

  const ArgumentsParamPage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
      //Pegar a string
      //child: Text(Get.arguments),

      //Pegar o mapa
      Map<String, String> arguments = Get.arguments;
       return Scaffold(
           appBar: AppBar(title: const Text('Argumens Param'),),
           body: Center(
            child: Text(
              arguments['name'] ?? 'Nome não encontrado',  
            ),
           ),
       );
  }
}