import 'package:flutter/material.dart';

class BhawarthCustomPackage {
  // ✅ Custom Stylized Button
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

  // ✅ Custom Text Field
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

  // ✅ Custom Checklist (CheckboxListTile Generator)
  static Widget showCustomChecklist({
    required BuildContext context,
    required List<String> options,
    required List<bool> selectedValues,
    required Function(int index, bool value) onChanged,
  }) {
    assert(options.length == selectedValues.length, 'Options and selectedValues must be of equal length');

    final textStyle = Theme.of(context).textTheme.bodyMedium;

    return Column(
      children: List.generate(options.length, (index) {
        return CheckboxListTile(
          value: selectedValues[index],
          onChanged: (value) => onChanged(index, value ?? false),
          title: Text(options[index], style: textStyle),
          controlAffinity: ListTileControlAffinity.leading,
          activeColor: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        );
      }),
    );
  }
}
