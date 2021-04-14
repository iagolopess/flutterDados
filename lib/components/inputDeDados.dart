import 'package:flutter/material.dart';

class EditaCampo extends StatelessWidget {
  final TextEditingController controlador;
  final String rotulo;
  final String dica;

  EditaCampo({
    this.controlador,
    this.rotulo,
    this.dica,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controlador,
        style: TextStyle(
          fontSize: 18.0,
        ),
        decoration: InputDecoration(
          // Operador ternário para verificar se icone é null
          labelText: rotulo,
          hintText: dica,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
