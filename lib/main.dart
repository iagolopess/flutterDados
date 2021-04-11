import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(JogoDeDados());

class JogoDeDados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
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
              child: Image.asset('assets/images/two-dices.png'),
              width: 650,
              height: 250,
              padding: EdgeInsets.all(40.0),
            ),
            Text(
              "Jogo de Dados",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 28,
              ),
            ),
            ElevatedButton(
              child: Text(
                "Me aperta",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.black87,
                onPrimary: Colors.white,
              ),
              onPressed: () => {debugPrint("O botão foi pressionado")},
            )
          ],
        ),
      ),
    );
  }
}
