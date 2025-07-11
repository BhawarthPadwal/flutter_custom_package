import 'package:flutter/material.dart';

class BhawarthCustomPackage {
  static Widget showCustomButton1({
    //required BuildContext context,
    required String buttonText,
    required Color bgColor,
    required double cornerRadius,
    double? buttonHeight,
    double? buttonWidth,
  }) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.all(Radius.circular(cornerRadius)),
      ),
      child: Center(child: Text(buttonText)),
    );
  }
}
