import 'package:flutter/material.dart';

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
  Widget showCustomChecklist({
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