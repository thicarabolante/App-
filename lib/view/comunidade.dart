// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projeto_plataforma_fitness/view/artigos.dart';
import 'package:projeto_plataforma_fitness/view/calculadora.dart';


enum _MenuValues{
  comunidade,
  calculadora,
  artigos
}

class ComunidadeView extends StatefulWidget {
  const ComunidadeView({super.key});

  @override
  State<ComunidadeView> createState() => _ComunidadeViewState();
}

class _ComunidadeViewState extends State<ComunidadeView> {

  //String title = 'Login';
  //String firstPage = 'Comunidade';
  //String secondPage = 'Calculadora';
  //String thirdPage = 'Artigos Científicos';


  var txtPergunta = TextEditingController();
  var txtResposta = TextEditingController();
  var txtResposta2 = TextEditingController();

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(shadowColor: Color.fromARGB(255, 51, 48, 48),
        title: Text(
          'Comunidade'
          
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

                    // TODO: Handle this case.
                }
              },
            )
          ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Text(
            'Comunidade',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0)),
        
          ),

          SizedBox(
            height: 20,
            width: 20,
         
          
          ),
        
          Text(
            'Fórum de dúvidas',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0)),
          ),

          SizedBox(
              height: 35,
            ),

           


              Column( children:  [

                IconButton(

              icon: Icon(Icons.account_circle),
              iconSize: 70,
              color: Colors.grey,
              onPressed: () {
                setState(() {
                  
                });

              },
               ),

                
              
           Text(
            '• Thiago Moretti Carabolante ',
             style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0)),
          ),

          Text(
            ' Ribeirão Preto/SP ',
             style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 0, 0)),
          ),
              ],
            ),

           SizedBox(
              height: 35,
            ),



            Row(children:  <Widget> [
              
               IconButton(

              icon: Icon(Icons.account_circle),
              iconSize: 40,
              color: Colors.grey,
              onPressed: () {
                setState(() {
                  
                });

              },
               ),
              
           

              Text( 'MiguelC:',
              style:  TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0)),
              ),

              SizedBox(
              height: 25,

            ),


              Column (children: const [
              Text(  'Como realizar supino inclinado?',
              style:  TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 66, 36, 231)),
              
              ),
              ],
              ), 
            
            ],
            
            ),

            SizedBox(
              height: 5,

            ),
            TextField(
              //Indicar o controlador
              controller: txtResposta,
              style: TextStyle(
                fontSize: 15,
              ),
              decoration: InputDecoration(
                labelText: ' Responder',
                hintText: ' Dê uma resposta ',
                border: OutlineInputBorder(),
                


              ),
            ),

            SizedBox(
              height: 25,
            ),

            Row(children: <Widget> [
              IconButton(

              icon: Icon(Icons.account_circle),
              iconSize: 40,
              color: Colors.grey,
              onPressed: () {
                setState(() {
                  
                });

              },
               ),
              Text( 'johnnyP:',
              style:  TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0)),
              ),

              SizedBox(
              height: 25,

            ),


              Column (children: const [
              Text(  'Como aquecer o manguito rotator?',
              style:  TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 66, 36, 231)),
              
              ),
              ],
              ), 
            
            ],
            
            ),

            SizedBox(
              height: 5,

            ),
            TextField(
              //Indicar o controlador
              controller: txtResposta2,
              style: TextStyle(
                fontSize: 15,
              ),
              decoration: InputDecoration(
                labelText: ' Responder',
                hintText: ' Dê uma resposta ',
                border: OutlineInputBorder(),
                


              ),
            ),

            
          
          
            SizedBox(
              height: 25,
            ),

            Row(children: <Widget> [
              IconButton(

              icon: Icon(Icons.account_circle),
              iconSize: 40,
              color: Colors.grey,
              onPressed: () {
                setState(() {
                  
                });

              },
               ),
              Text( '• Você:',
              style:  TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0)),
              ),

              SizedBox(
              height: 25,

            ),


              Column (children: const [
              Text(  '',
              style:  TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 66, 36, 231)),
              
              ),
              ],
              ), 
            
            ],
            
            ),

            TextField( 
              //Indicar o controlador
              controller: txtPergunta,
              style: TextStyle(
                fontSize: 15,
              ),
              decoration: InputDecoration(
                labelText: ' Pergunta',
                hintText: ' Faça uma pergunta',
                border: OutlineInputBorder(),
                


              ),
            ),
             
          ],
        ),
      
      ),
    );
            
  }
}