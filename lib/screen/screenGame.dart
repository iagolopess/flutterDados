import 'package:dados/components/geraAleatorio.dart';
import 'package:flutter/material.dart';

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
