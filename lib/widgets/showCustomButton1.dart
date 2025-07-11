import 'package:flutter/material.dart';

/// Returns a custom stylized button widget.
  ///
  /// This widget creates a tappable button with customizable:
  /// - [buttonText]: Text to display
  /// - [bgColor]: Background color (defaults to theme's primary color)
  /// - [cornerRadius]: Corner radius for rounded edges
  /// - [buttonHeight] and [buttonWidth]: Dimensions of the button
  /// - [onTap]: Tap callback
  ///
  /// It uses the app's theme (via [context]) for text styling and fallback colors.
  ///
  /// Example:
  /// ```dart
  /// BhawarthCustomPackage.showCustomButton1(
  ///   context: context,
  ///   buttonText: 'Click Me',
  ///   bgColor: Colors.blue,
  ///   cornerRadius: 10,
  ///   buttonHeight: 50,
  ///   buttonWidth: 200,
  ///   onTap: () => print('Tapped!'),
  /// );
  /// ```
  Widget showCustomButton1({
    required BuildContext context,
    required String buttonText,
    Color? bgColor,
    double? cornerRadius,
    double? buttonHeight,
    double? buttonWidth,
    VoidCallback? onTap,
  }) {
    final textStyle = Theme.of(context).textTheme.bodyMedium;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: buttonHeight ?? double.infinity,
        width: buttonWidth ?? double.infinity,
        decoration: BoxDecoration(
          color: bgColor ?? Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(cornerRadius ?? 0),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: textStyle?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
