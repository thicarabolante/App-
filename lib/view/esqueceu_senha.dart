// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class EsqueceuView extends StatefulWidget {
  const EsqueceuView({super.key});

  @override
  State<EsqueceuView> createState() => _EsqueceuViewState();
}

class _EsqueceuViewState extends State<EsqueceuView> {
  //
  var txtEmail = TextEditingController();

  

 void exibirResultado(context, res) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Uma mensagem foi enviada ao seu email para redefinir a senha'),
        action: SnackBarAction(
          label: 'Fechar',
          onPressed: () {},
        )
        
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
            'Troque sua senha',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0)),
        
          ),

          SizedBox(
            height: 50,
            width: 50,
         
          
          ),
        
          Text(
            '• Entre com o seu endereço E-mail abaixo para receber um e-mail para trocar a senha',
            style: TextStyle(
                fontSize: 20,
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
                hintText: ' Entre com o seu e-mail',
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
                  child: Text('Enviar'),
                  
                  onPressed: () {

                    exibirResultado(
                        context,
                        "Resultado"
                      );
                     
                    
                    
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