import 'package:flutter/material.dart';
import 'screenGame.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Text(
                "Cê tem dado em casa?",
                style: TextStyle(
                  color: Colors.black87,
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
            ElevatedButton(
              child: Text(
                "Um jogador",
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
                  return TelaDoJogo();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
