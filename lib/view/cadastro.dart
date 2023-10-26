// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class CadastroView extends StatefulWidget {
  const CadastroView({super.key});

  @override
  State<CadastroView> createState() => _CadastroViewState();
}

class _CadastroViewState extends State<CadastroView> {
  //
  var txtNome = TextEditingController();
  var txtNomeComp = TextEditingController();
  var txtSenha = TextEditingController();
  var txtEmail = TextEditingController();
  var txtTelefone = TextEditingController();
  var txtCidade = TextEditingController();

  //
    void exibirResultado(context, res) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('.'),
        duration: Duration(seconds: 10),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(shadowColor: Color.fromARGB(255, 51, 48, 48),
        title: Text(
          'Login'
          
          ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Text(
            'Crie sua conta',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0)),
        
          ),

           
            SizedBox(
              height: 20,
            ),
            TextField(
              //Indicar o controlador
              controller: txtNome,
              style: TextStyle(
                fontSize: 22,
              ),
              decoration: InputDecoration(
                labelText: ' Nome(usuário)',
                hintText: ' Entre com o seu nome',
                border: OutlineInputBorder(),
                


              ),
            ),

            SizedBox(
              height: 20,
            ),
            TextField(
              //Indicar o controlador
              controller: txtNomeComp,
              style: TextStyle(
                fontSize: 22,
              ),
              decoration: InputDecoration(
                labelText: ' Nome Completo',
                hintText: ' Entre com o seu nome inteiro',
                border: OutlineInputBorder(),
                


              ),
            ),

            SizedBox(
              height: 20,
            ),
            TextField(
              //Indicar o controlador
              controller: txtSenha,
              style: TextStyle(
                fontSize: 22,
              ),
              decoration: InputDecoration(
                labelText: ' Senha',
                hintText: ' Entre com a sua senha',
                border: OutlineInputBorder(),
                


              ),
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
                hintText: ' Entre com o seu e-mail',
                border: OutlineInputBorder(),
                


              ),
            ),

            SizedBox(
              height: 20,
            ),
            TextField(
              //Indicar o controlador
              controller: txtTelefone,
              style: TextStyle(
                fontSize: 22,
              ),
              decoration: InputDecoration(
                labelText: ' Telefone(celular)',
                hintText: ' Entre com o seu celular',
                border: OutlineInputBorder(),
                


              ),
            ), 

            SizedBox(
              height: 20,
            ),
            TextField(
              //Indicar o controlador
              controller: txtCidade,
              style: TextStyle(
                fontSize: 22,
              ),
              decoration: InputDecoration(
                labelText: ' Cidade *opcional',
                hintText: ' Entre com a sua cidade',
                border: OutlineInputBorder(),
                


              ),
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
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(60, 60),
                    textStyle: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                  child: Text('Criar'),
                  onPressed: () {
                    //
                    //Ação ao pressionar o botão
                    //
                     Navigator.of(context).pop();
                     //pushNamed(context, 'login');
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