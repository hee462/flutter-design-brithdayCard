import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main() {
  runApp(const Birthday());
}

class Birthday extends StatelessWidget {
  const Birthday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: CardWidget(),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Lottie.asset('assets/json/card.json')
        ),

        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom:500.0),
              child: Text(
                'Happy Birthday Sam!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize:55,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'From Emma',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
