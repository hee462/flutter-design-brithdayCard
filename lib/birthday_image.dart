import 'package:flutter/material.dart';

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
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'Happy Birthday Sam!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 100,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'From Emma',
          style: TextStyle(fontSize: 30),
        )
      ],
    );
  }
}
