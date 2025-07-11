import 'package:flutter/material.dart';

/// A custom UI utility package built by Bhawarth Padwal.
///
/// This package provides pre-styled, reusable widgets for common UI elements
/// like buttons, text fields, and checklists, that are easy to customize
/// and fully theme-aware.
class BhawarthCustomPackage {
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
  static Widget showCustomButton1({
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
  static Widget showCustomTextField1({
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

  /// Returns a group of custom-styled checklist items (CheckboxListTiles).
  ///
  /// - [options]: List of option strings to display
  /// - [selectedValues]: A list of bools corresponding to which checkboxes are selected
  /// - [onChanged]: Callback to notify parent when checkbox is toggled
  ///
  /// The checkbox tiles are styled using the current [Theme.of(context)].
  ///
  /// Example:
  /// ```dart
  /// BhawarthCustomPackage.showCustomChecklist(
  ///   context: context,
  ///   options: ['A', 'B', 'C'],
  ///   selectedValues: [true, false, false],
  ///   onChanged: (index, value) {
  ///     setState(() => selectedValues[index] = value);
  ///   },
  /// );
  /// ```
  static Widget showCustomChecklist({
    required BuildContext context,
    required List<String> options,
    required List<bool> selectedValues,
    required Function(int index, bool value) onChanged,
  }) {
    assert(
      options.length == selectedValues.length,
      'Options and selectedValues must be of equal length',
    );

    final textStyle = Theme.of(context).textTheme.bodyMedium;

    return Column(
      children: List.generate(options.length, (index) {
        return CheckboxListTile(
          value: selectedValues[index],
          onChanged: (value) => onChanged(index, value ?? false),
          title: Text(options[index], style: textStyle),
          controlAffinity: ListTileControlAffinity.leading,
          activeColor: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        );
      }),
    );
  }
}
