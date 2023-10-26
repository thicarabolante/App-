// ignore_for_file: prefer_const_constructors

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:projeto_plataforma_fitness/view/artigos.dart';
import 'package:projeto_plataforma_fitness/view/cadastro.dart';
import 'package:projeto_plataforma_fitness/view/calculadora.dart';
import 'package:projeto_plataforma_fitness/view/comunidade.dart';
import 'package:projeto_plataforma_fitness/view/detalhes.dart';
import 'package:projeto_plataforma_fitness/view/esqueceu_senha.dart';
import 'package:projeto_plataforma_fitness/view/login_view.dart';
import 'package:projeto_plataforma_fitness/view/sobre.dart';


void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,

        //
        // ROTAS DE NAVEGAÇÃO
        //
        initialRoute: 'principal',
        routes: {

        'principal': (context) => PrincipalView(),
        'login': (context) => LoginView(),
        'sobre': (context) => SobreView(),
        'esqueceu': (context) => EsqueceuView(),
        'cadastro': (context) => CadastroView(),
        'comunidade': (context) => ComunidadeView(),
        'calculadora': (context) => CalculadoraView(),
        'artigos': (context) => ArtigosView(),
        'detalhes': (context) =>DetalhesView(),


        },
      ),
    ),
  );
}


  
        


//
// Tela Principal
// stateless = stl

class PrincipalView extends StatelessWidget {
  const PrincipalView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //Alinhamento Vertical
        mainAxisAlignment: MainAxisAlignment.center,

        //Alinhamento Horizontal
        crossAxisAlignment: CrossAxisAlignment.center,
        
        children:[
          Text(
            'Gym',
            style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 0, 0)),
        
          ),
        
          Text(
            'Fitness',
            style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 66, 36, 231)),
          ),
          SizedBox(
            width: double.infinity,
            height: 40,
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.blue.shade900,
              foregroundColor: Colors.white,
              minimumSize: Size(180, 36),
            ),
            onPressed: () {
              //
              // NAVEGAÇÃO PARA ROTA
              Navigator.pushNamed(context, 'login');
              
            },
            child: Text('Realizar Login'),
          ),
          SizedBox(
              height: 30,
            ),
            Row(
              //Alinhamento Vertical
        mainAxisAlignment: MainAxisAlignment.center,

        //Alinhamento Horizontal
        crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(30, 30),
                    textStyle: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  child: Text('Sobre nós'),
                  onPressed: () {
                    //
                    //Ação ao pressionar o botão
                    //
                     Navigator.pushNamed(context, 'sobre');
                  },
                ),
              ],
            ),
        ],
      ),
    );
  }
}