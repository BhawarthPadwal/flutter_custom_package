import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bhawarth_custom_package/bhawarth_custom_package.dart';

void main() {
  group('BhawarthCustomPackage Widget Tests', () {
    testWidgets('showCustomButton1 displays text and applies styles', (
      WidgetTester tester,
    ) async {
      const testText = 'Hello';
      const testColor = Colors.amber;
      const testCornerRadius = 20.0;

      late BuildContext context;

      // Get a valid context
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (ctx) {
              context = ctx;
              return const SizedBox.shrink();
            },
          ),
        ),
      );

      // Now pump the actual widget under test
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: showCustomButton1(
              context: context,
              buttonText: testText,
              bgColor: testColor,
              cornerRadius: testCornerRadius,
            ),
          ),
        ),
      );

      // Assertions
      expect(find.text(testText), findsOneWidget);

      final container = tester.widget<Container>(find.byType(Container));
      final decoration = container.decoration as BoxDecoration?;

      expect(decoration, isNotNull);
      expect(decoration!.color, testColor);
      expect(
        decoration.borderRadius,
        BorderRadius.all(Radius.circular(testCornerRadius)),
      );
    });

    testWidgets('showCustomTextField1 shows hint, label, and icon', (
      WidgetTester tester,
    ) async {
      final controller = TextEditingController();
      const hintText = 'Enter your name';
      const labelText = 'Name';

      late BuildContext context;

      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (ctx) {
              context = ctx;
              return const SizedBox.shrink();
            },
          ),
        ),
      );

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: showCustomTextField1(
              context: context,
              controller: controller,
              hintText: hintText,
              labelText: labelText,
              prefixIcon: Icons.person,
            ),
          ),
        ),
      );

      expect(find.byType(TextField), findsOneWidget);
      expect(find.text(hintText), findsOneWidget);
      expect(find.text(labelText), findsOneWidget);
      expect(find.byIcon(Icons.person), findsOneWidget);
    });

    testWidgets('showCustomChecklist builds checkboxes with correct labels', (
      WidgetTester tester,
    ) async {
      final options = ['Option 1', 'Option 2', 'Option 3'];
      final selectedValues = [true, false, true];

      late BuildContext context;

      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (ctx) {
              context = ctx;
              return const SizedBox.shrink();
            },
          ),
        ),
      );

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: showCustomChecklist(
              context: context,
              options: options,
              selectedValues: selectedValues,
              onChanged: (index, value) {
                // no-op for test
              },
            ),
          ),
        ),
      );

      expect(find.byType(CheckboxListTile), findsNWidgets(options.length));
      for (final option in options) {
        expect(find.text(option), findsOneWidget);
      }
    });
  });
}
