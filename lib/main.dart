import 'package:flutter/material.dart';
import 'screen/mainMenu.dart';

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
