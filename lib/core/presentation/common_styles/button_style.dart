import 'package:flutter/material.dart';

import '../../../gen/colors.gen.dart';

class CommonButtonStyle {
  CommonButtonStyle._();
  static final primaryButtonStyle = ButtonStyle(
      overlayColor: const MaterialStatePropertyAll(ColorName.activeTag),
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
      {Color? borderColor,
      bool capsuleShape = true,
      Color? backgroundColor,
      Color? textColor,
      Color? foregroundColor,
      Color? overlayColor}) {
    return copyWith(
      overlayColor: overlayColor != null ? MaterialStatePropertyAll(overlayColor) : null,
      alignment: Alignment.center,
      // textStyle: MaterialStatePropertyAll(TextStyle(color: textColor)),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(capsuleShape ? 45 : 6),
            side: borderColor != null ? BorderSide(color: borderColor) : BorderSide.none),
      ),
      side: borderColor != null ? MaterialStatePropertyAll(BorderSide(color: borderColor)) : null,
      backgroundColor: backgroundColor != null
          ? MaterialStatePropertyAll(backgroundColor)
          : const MaterialStatePropertyAll(ColorName.primary),
      foregroundColor: MaterialStatePropertyAll(foregroundColor),
    );
  }
}
