import 'dart:math';

import 'package:flutter/material.dart';

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
