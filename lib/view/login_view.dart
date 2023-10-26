// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

//
// TELA Login
// Stateful => stf+TAB
//
class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}



class _LoginViewState extends State<LoginView> {
  //
  //TextEditingController
  //Objetos responsáveis pela leitura/escrita de valores
  //nos campos de texto

  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();

  //
  //Método para exibir o resultado do cálculo
  //
    void exibirResultado(context, res) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(res),
        duration: Duration(seconds: 10),
      ),
    );
  }

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
          children: [
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
              height: 20,
            ),
            TextField(
              //Indicar o controlador
              controller: txtEmail,
              style: TextStyle(
                fontSize: 22,
              ),
              decoration: InputDecoration(
                labelText: ' E-mail',
                hintText: ' Entre com o e-mail',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(height: 20),
            TextField(
              controller: txtSenha,
              style: TextStyle(
                fontSize: 22,
              ),
              decoration: InputDecoration(
                labelText: ' Senha',
                hintText: ' Entre com a senha',
                border: OutlineInputBorder(),
              ),
            ),
            //
            // Operações
            //
            SizedBox(
              height: 30,
            ),
            Row(
              //Alinhamento Vertical
        mainAxisAlignment: MainAxisAlignment.center,

        //Alinhamento Horizontal
        crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(60, 60),
                    textStyle: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                  child: Text('Entrar'),
                  onPressed: () {
                    //
                    //Ação ao pressionar o botão
                    //
                     Navigator.pushNamed(context, 'comunidade');
                  },
                ),
              ],
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
                  child: Text('Esqueceu a senha?'),
                  onPressed: () {
                    //
                    //Ação ao pressionar o botão
                    //
                     Navigator.pushNamed(context, 'esqueceu');
                  },
                ),
              ],
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
                  child: Text('Cadastre-se aqui'),
                  onPressed: () {
                    //
                    //Ação ao pressionar o botão
                    //
                     Navigator.pushNamed(context, 'cadastro');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
