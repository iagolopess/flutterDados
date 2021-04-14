import 'package:flutter/material.dart';
import 'screen/mainMenu.dart';

void main() => runApp(JogoDeDados());

class JogoDeDados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: MainMenu(),
    );
  }
}
