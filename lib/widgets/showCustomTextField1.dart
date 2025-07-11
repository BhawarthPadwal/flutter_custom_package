import 'package:flutter/material.dart';

/// Returns a custom-styled [TextField] with optional label, icons, and configuration.
  ///
  /// - [controller]: The [TextEditingController] used to manage the input text
  /// - [hintText]: Placeholder hint shown inside the text field
  /// - [labelText]: Label above the text field (optional)
  /// - [toObscureText]: Whether the input should be obscured (for passwords)
  /// - [keyboardType]: The keyboard type (e.g. text, number)
  /// - [prefixIcon] and [suffixIcon]: Optional icons to show before/after text
  ///
  /// Uses app theme via [context] for text styling.
  ///
  /// Example:
  /// ```dart
  /// BhawarthCustomPackage.showCustomTextField1(
  ///   context: context,
  ///   controller: myController,
  ///   hintText: 'Enter name',
  ///   labelText: 'Name',
  ///   prefixIcon: Icons.person,
  /// );
  /// ```
  Widget showCustomTextField1({
    required BuildContext context,
    required TextEditingController controller,
    required String hintText,
    String? labelText,
    bool toObscureText = false,
    TextInputType? keyboardType,
    IconData? prefixIcon,
    IconData? suffixIcon,
  }) {
    return TextField(
      controller: controller,
      obscureText: toObscureText,
      keyboardType: keyboardType ?? TextInputType.text,
      style: Theme.of(context).textTheme.bodyMedium,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        filled: true,
        fillColor: Colors.grey[200],
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }