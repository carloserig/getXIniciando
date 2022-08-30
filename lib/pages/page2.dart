import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_iniciando/model/pessoa.dart';

class Page2 extends StatelessWidget {

  Page2({ Key? key }) : super(key: key);

  final pessoaModel = Rx<Pessoa>(Pessoa(
    id: 1, 
    nome: 'Carlos Erig', 
    idade: 44));

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Page 2'),),
           body: Center(
            child: Column(
              children: [
                Obx(() {
                  return Text('Id da Pessoa: ${pessoaModel.value.id}');
                }),
                Obx(() {
                  return Text('Nome da Pessoa: ${pessoaModel.value.nome}');
                }),
              ],
            ),
           ),
       );
  }
}