import 'package:flutter/material.dart';

class MiddlewaresHomePage extends StatelessWidget {

  MiddlewaresHomePage({ Key? key }) : super(key: key) {
    debugPrint('Criando página Middleware home');
  }
  

   @override
   Widget build(BuildContext context) {
    debugPrint('Criando página build');
       return Scaffold(
           appBar: AppBar(title: const Text('Middlewares Home Page'),),
           body: Center(
            child: ElevatedButton(onPressed: () {}, child: Text('Botão')),
           ),
       );
  }
}