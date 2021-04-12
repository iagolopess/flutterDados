import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(JogoDeDados());

class JogoDeDados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: MainMenu(),
    );
  }
}

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Text(
                "Cê tem dado em casa?",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 28,
                ),
              ),
              padding: EdgeInsets.all(20.20),
            ),
            Container(
              child: Image.asset('assets/images/two-dices.png'),
              width: 650,
              height: 250,
              padding: EdgeInsets.all(20.20),
            ),
            ElevatedButton(
              child: Text(
                "Um jogador",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.black87,
                onPrimary: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return TelaDoJogo();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class TelaDoJogo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TelaDoJogoState();
  }
}

class TelaDoJogoState extends State<TelaDoJogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Jogo de Dados"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              GeraNumeroAleatorio(),
            ],
          ),
        ));
  }
}

class GeraNumeroAleatorio extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NumeroAleatorioState();
  }
}

class NumeroAleatorioState extends State<GeraNumeroAleatorio> {
  var numero = 1;
  var segundoNumero = 1;
  void _geraValoresDados(BuildContext context) {
    setState(() {
      Random numeroAleatorio = new Random();

      numero = numeroAleatorio.nextInt(6) + 1;
      segundoNumero = numeroAleatorio.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: ElevatedButton(
            child: Text(
              "Jogar",
              style: TextStyle(fontSize: 20),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.black87,
              onPrimary: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              alignment: Alignment.center,
            ),
            onPressed: () =>
                {_geraValoresDados(context), debugPrint('$numero')},
          ),
          padding: EdgeInsets.only(top: 30),
          margin: EdgeInsets.only(bottom: 20),
        ),
        Row(
          children: [
            Text("Você"),
            Text("Computador"),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
        Row(
          children: [
            Container(
              child: Text(
                '$numero',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              decoration: BoxDecoration(
                /* shape: BoxShape.rectangle, */
                color: Colors.black87,
              ),
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
            ),
            Container(
              child: Text(
                '$segundoNumero',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              color: Colors.black87,
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
      ],
    );
  }
}
