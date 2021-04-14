import 'package:flutter/material.dart';
import 'screen/mainMenu.dart';

void main() => runApp(JogoDeDados());

class JogoDeDados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.grey[900],
        accentColor: Colors.grey[300],
        scaffoldBackgroundColor: Colors.grey[400],
      ),
      home: MainMenu(),
    );
  }
}
