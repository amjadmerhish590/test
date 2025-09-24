import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_portfolio/main.dart';
import 'package:my_portfolio/pages/home_page.dart';

void main() {
  testWidgets('HomePage loads and shows main elements', (WidgetTester tester) async {
    // بناء التطبيق
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle(); // انتظار انتهاء أي animations أو async tasks

    // تحقق من وجود HomePage
    expect(find.byType(HomePage), findsOneWidget);

    // تحقق من النصوص الفعلية في الصفحة
    // استبدل هذه النصوص بما يعكس المحتوى الحقيقي في HomePage
    expect(find.text('What I can do'), findsOneWidget);



    expect(find.byType(IconButton), findsWidgets);

    // مثال: إذا لديك عنصر مهم مع Key
    // expect(find.byKey(Key('projects_title')), findsOneWidget);
  });
}
