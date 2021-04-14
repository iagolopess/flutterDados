import 'package:flutter/material.dart';
import 'dart:math';

class TelaDoJogoTeste extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TelaDoJogoStateTeste();
  }
}

class TelaDoJogoStateTeste extends State<TelaDoJogoTeste> {
  int nextDiceImg = 2;
  int score = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Jogo de Dados"),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/images/dice$nextDiceImg.png'),
                ],
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    child: Text('Aperte o botão'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black87,
                      onPrimary: Colors.white,
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      alignment: Alignment.center,
                    ),
                    onPressed: () {
                      setState(() {
                        nextDiceImg = Random().nextInt(6) + 1;
                        score = score + nextDiceImg;
                      });
                    }),
              ],
            ),
            Container(
              child: Text(
                'Pontos: $score',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              color: Colors.black87,
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
              margin: EdgeInsets.symmetric(horizontal: 0, vertical: 30),
            )
          ],
        ),
      ),
    );
  }
}
