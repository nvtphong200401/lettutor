import 'package:flutter/material.dart';

import '../../../gen/colors.gen.dart';

class CommonButtonStyle {
  CommonButtonStyle._();
  static final primaryButtonStyle = ButtonStyle(
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      backgroundColor: const MaterialStatePropertyAll(ColorName.primary),
      padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 20, vertical: 5)));
}

extension ButtonStyleEx on ButtonStyle {
  ButtonStyle customCopyWith(
      {Color? borderColor, bool capsuleShape = true, Color? backgroundColor, Color? textColor}) {
    return copyWith(
      // textStyle: MaterialStatePropertyAll(TextStyle(color: textColor)),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(capsuleShape ? 45 : 6),
            side: borderColor != null ? BorderSide(color: borderColor) : BorderSide.none),
      ),
      backgroundColor: MaterialStatePropertyAll(backgroundColor),
    );
  }
}
