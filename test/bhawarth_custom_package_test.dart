import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bhawarth_custom_package/bhawarth_custom_package.dart';

void main() {
  testWidgets('showCustomButton1 displays text and uses correct styles', (WidgetTester tester) async {
    // Arrange
    const testText = 'Hello';
  
    const testColor = Colors.amber;
    const testCornerRadius = 20.0;

    // Act: pump the widget
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: BhawarthCustomPackage.showCustomButton1(
            buttonText: testText,
            bgColor: testColor,
            cornerRadius: testCornerRadius,
          ),
        ),
      ),
    );

    // Assert: Check if the text appears
    expect(find.text(testText), findsOneWidget);

    // Assert: Check Container's decoration
    final container = tester.widget<Container>(find.byType(Container));
    final BoxDecoration? decoration = container.decoration as BoxDecoration?;

    expect(decoration, isNotNull);
    expect(decoration!.color, testColor);
    expect(decoration.borderRadius, BorderRadius.all(Radius.circular(testCornerRadius)));
  });
}
