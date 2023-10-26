// ignore_for_file: prefer_const_constructors



import 'package:flutter/material.dart';
import 'package:projeto_plataforma_fitness/view/artigos.dart';
import 'package:projeto_plataforma_fitness/view/comunidade.dart';

enum _MenuValues { comunidade, calculadora, artigos }

//
// TELA CALCULADORA
// Stateful => stf+TAB
//
class CalculadoraView extends StatefulWidget {
  const CalculadoraView({super.key});

  @override
  State<CalculadoraView> createState() => _CalculadoraViewState();
}

class _CalculadoraViewState extends State<CalculadoraView> {
  //TextEditingController
  //Objetos responsáveis pela leitura/escrita de valores
  //nos campos de texto

  var txtNome = TextEditingController();
  var txtAltura = TextEditingController();
  var txtPeso = TextEditingController();

  //
  //Método para exibir o resultado do cálculo
  //
  void exibirResultado(context, res) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(res),       
        duration: Duration(seconds: 10),
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
      appBar: AppBar(
        title: Text('Calculadora IMC'),
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
            onSelected: (value) {
              switch (value) {
                case _MenuValues.comunidade:
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (c) => ComunidadeView()));
                  break;
                case _MenuValues.calculadora:
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (c) => CalculadoraView()));
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
              'Calculadora',
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
              'Cálculo do IMC',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0)),
            ),
            SizedBox(
              height: 20,
              width: 20,
            ),
            Icon(
              Icons.fitness_center,
              size: 160,
              color: Colors.blue,
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
                labelText: ' Nome',
                hintText: ' Entre com o seu nome',
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              //Indicar o controlador
              controller: txtAltura,
              style: TextStyle(
                fontSize: 22,
              ),
              decoration: InputDecoration(
                labelText: ' Altura',
                hintText: ' Entre com a sua altura',
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              //Indicar o controlador
              controller: txtPeso,
              style: TextStyle(
                fontSize: 22,
              ),
              decoration: InputDecoration(
                labelText: ' Peso',
                hintText: ' Entre com o seu peso',
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
                  child: Text('Calcular IMC'),
                  onPressed: () {
                    //
                    //Ação ao pressionar o botão
                    //
                    setState(
                      () {
                        
                        double v1 = double.parse(txtAltura.text);
                        double v2 = double.parse(txtPeso.text);
                        double res = v2 / (v1 * v1);
                        
                

                        exibirResultado(
                          context,   
                          "Seu IMC é: " + res.toStringAsFixed(2),
                        );
                      },
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
