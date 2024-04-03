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
    return Stack(
      children: [
        Center(
          child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIcsnJrej7fSB1wt-Q-RlgMBnCJw1nbu9itw&s',
            fit: BoxFit.fill,
            width: 800,
            height: 400,

          ),
        ),

        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Happy Birthday Sam!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.bold,
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
