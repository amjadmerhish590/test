import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_portfolio/main.dart';

void main() {
  testWidgets('HomePage loads and shows title', (WidgetTester tester) async {

    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();


    expect(find.text('AmjadMerhish AM'), findsOneWidget);


    expect(find.byType(IconButton), findsWidgets);
  });
}
