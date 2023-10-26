// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class SobreView extends StatefulWidget {
  const SobreView({super.key});

  @override
  State<SobreView> createState() => _SobreViewState();
}

class _SobreViewState extends State<SobreView> {
  

  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(shadowColor: Color.fromARGB(255, 51, 48, 48),
        title: Text(
          'Página Inicial'
          
          ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(

      
          children:  [

            

            Text(
            'Sobre Nós',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0)),
        
          ),

           SizedBox(
            height: 75,
            width: 75,
         
          
          ), 
        
          Text(
            '• O meu tema é uma Plataforma Fitness, o meu objetivo é Desenvolver um aplicativo '
             'mobile para comunidade fitness, que integra várias ferramentas.',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 66, 36, 231)),
          ),
           
          SizedBox(
            height: 75,
            width: 75,
         
          
          ), 
          Image.asset("assets/images/thiago.jpg"),

          Text(
            '• Nome: Thiago Moretti Carabolante',
             style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0)),
          ),

          ],

          
        ),
      ),
    );
  }
}