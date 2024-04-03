import 'package:first_flutter_app/birthday_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Birthday Widget Test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Birthday(),
    ));

    expect(find.text("It's My Birthday!"), findsOneWidget);
  });
}
