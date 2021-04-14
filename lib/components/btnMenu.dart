import 'package:flutter/material.dart';

class BtnCaminho extends StatelessWidget {
  final tela;
  final btnTexto;

  BtnCaminho({this.tela, this.btnTexto});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        btnTexto,
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
          return tela;
        }));
      },
    );
  }
}
