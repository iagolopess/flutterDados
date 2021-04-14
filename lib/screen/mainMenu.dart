import 'package:dados/components/btnMenu.dart';

import 'package:flutter/material.dart';
import 'novaTelaTeste.dart';
/* import 'screenGame.dart'; */

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Text(
                "Dices Party",
                style: TextStyle(
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
            BtnCaminho(
              tela: TelaDoJogoTeste(),
              btnTexto: 'Um jogador',
            ),
          ],
        ),
      ),
    );
  }
}
