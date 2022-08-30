import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page1 extends StatelessWidget {

  Page1({ Key? key }) : super(key: key);

  final nome = RxString( 'Carlos Erig');
  var qtde = RxInt(0);
  final isCasado = RxBool(true);
   
   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Page 1'),),
           body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Página 1'),
                Obx(() => Text(nome.value)),
                Obx(() => Text(isCasado.toString())),
                Obx(() {
                  return Text(qtde.value.toString());
                }), 
                ElevatedButton(onPressed: (){
                    qtde++;
                }, child: Text('Somar'))
              ],
            ),
           ),
       );
  }
}