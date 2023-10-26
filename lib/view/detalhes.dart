// ignore_for_file: prefer_const_constructors
import 'package:projeto_plataforma_fitness/model/tarefa.dart';
import 'package:flutter/material.dart';

class DetalhesView extends StatefulWidget {
  const DetalhesView({super.key});

  @override
  State<DetalhesView> createState() => _DetalhesViewState();
}

class _DetalhesViewState extends State<DetalhesView> {
  @override
  Widget build(BuildContext context) {

    //Recuperar a Tarefa que foi passada como parâmetro
    var tarefa = ModalRoute.of(context)!.settings.arguments as Tarefa;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes'),
        centerTitle: true,
        backgroundColor: Colors.blue
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              tarefa.livro,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              tarefa.autor,
              style: TextStyle(
                fontSize:  20,
                fontStyle: FontStyle.italic
              ),
            ),
          ],
          
          
        )
      )
    );

  }
}