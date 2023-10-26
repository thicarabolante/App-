// ignore_for_file: prefer_const_constructors



import 'package:flutter/material.dart';
import 'package:projeto_plataforma_fitness/view/calculadora.dart';
import 'package:projeto_plataforma_fitness/view/comunidade.dart';

import '../model/tarefa.dart';



enum _MenuValues{
  comunidade,
  calculadora,
  artigos
}




class ArtigosView extends StatefulWidget {
  const ArtigosView({super.key});
  

  @override
  State<ArtigosView> createState() => _ArtigosViewState();
}

class _ArtigosViewState extends State<ArtigosView> {
    var pesquisa = TextEditingController();
  //
  List<Tarefa> lista = [ ];

   void exibirResultado(context, res) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(res),
        duration: Duration(seconds: 10),
      ),
    );
  }


  
  @override
  void initState() {
    super.initState();
    //Inicialização da lista
    lista = Tarefa.gerarTarefas();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(shadowColor: Color.fromARGB(255, 51, 48, 48),
        title: Text(
  
          'Artigos Científicos'
          ),
        
        actions: [
            PopupMenuButton<_MenuValues>(
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Text('Comunidade'),
                  value: _MenuValues.comunidade,
                  
                ),
                PopupMenuItem(
                  child: Text('Calculadora IMC'),
                  value: _MenuValues.calculadora,
               ),
               PopupMenuItem(
                  child: Text('Artigos Científicos'),
                  value: _MenuValues.artigos,
               ),
              ],
              onSelected: (value){
                switch (value) {
                  case _MenuValues.comunidade:
                    Navigator.of(context)
                    .push(MaterialPageRoute(builder: (c) => ComunidadeView()));                 
                  break;
                  case _MenuValues.calculadora: 
                    Navigator.of(context)
                    .push(MaterialPageRoute(builder: (c) => CalculadoraView()));                 
                  break;
                  case _MenuValues.artigos:
                    Navigator.of(context)
                    .push(MaterialPageRoute(builder: (c) => ArtigosView()));                 
                  break;

                    
                }
              },
            )
          ],
      ),
      
      body: Padding(
        
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: lista.length,
          itemBuilder: (context, position) {
            return Card(
              child: ListTile(
                leading: Image.network(
                  lista[position].urlImage
                ),
                title: Text(lista[position].livro),
                subtitle: Text(lista[position].autor),
                
                hoverColor: Color.fromARGB(255, 66, 36, 231),
                onTap: () {
                  //retornar tarefa selecionada pelo usuario
                  Tarefa t = lista[position];

                  //enviar tarefa selecionada para tela de DetalhesView
                  Navigator.pushNamed(
                    context,
                    'detalhes',
                    arguments: t
                  );
                }
              ),
            );
          },
        ),
      ),
    
    
    );
  }
}