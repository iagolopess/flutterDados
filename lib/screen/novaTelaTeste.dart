import 'package:dados/components/inputDeDados.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class TelaDoJogoTeste extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TelaDoJogoStateTeste();
  }
}

class TelaDoJogoStateTeste extends State<TelaDoJogoTeste> {
  int nextDiceImg = 1;
  int pontosJogador = 0, pontosMaquina = 0;
  final TextEditingController escolhaDoJogador = TextEditingController();
  var mensagem = 'Resultado';
  var dicaMensagem = "Somente números de 1 a 6";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jogo de Dados"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            EditaCampo(
              controlador: escolhaDoJogador,
              rotulo: "Aposte um número",
              dica: dicaMensagem,
            ),
            Row(
              children: [
                Text(
                  'Você: $pontosJogador',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Maquina: $pontosMaquina',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                    child: Text('Jogar'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black87,
                      onPrimary: Colors.white,
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      alignment: Alignment.center,
                    ),
                    onPressed: () {
                      setState(() {
                        nextDiceImg = Random().nextInt(6) + 1;
                        final numeroJogado =
                            int.tryParse(escolhaDoJogador.text);

                        validaDigito(numeroJogado);
                      });
                    }),
                Container(
                  child: Text(
                    '$mensagem',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  color: Colors.black87,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void validaDigito(int numeroJogado) {
    if (numeroJogado < 1 || numeroJogado > 6) {
      dicaMensagem = 'Número invalido';
    } else {
      if (numeroJogado == nextDiceImg) {
        mensagem = 'Você ganhou';
        pontosJogador += nextDiceImg;
        dicaMensagem = "Somente números de 1 a 6";
      } else {
        mensagem = 'Você perdeu!';
        pontosMaquina += nextDiceImg;
        dicaMensagem = "Somente números de 1 a 6";
      }
    }
    escolhaDoJogador.clear();
  }
}
