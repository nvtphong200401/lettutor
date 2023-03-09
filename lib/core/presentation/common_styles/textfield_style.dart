import 'package:flutter/material.dart';

import '../../../gen/colors.gen.dart';

class CommonTextFieldStyle {
  CommonTextFieldStyle._();

  static final primaryInputDecoration = InputDecoration(
    enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: ColorName.grey, width: 1.5),
        borderRadius: BorderRadius.circular(6)),
    contentPadding: const EdgeInsets.all(10),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: ColorName.primary),
      borderRadius: BorderRadius.circular(6),
    ),
    isDense: true,
    hintStyle: const TextStyle(color: ColorName.grey),
  );
}

extension InputDecorationEx on InputDecoration {
  InputDecoration customCopyWith(
      {Color? borderColor,
      bool capsuleShape = true,
      String? hintText,
      Widget? prefixIcon,
      Widget? suffixIcon}) {
    return copyWith(
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor ?? ColorName.grey, width: 1.5),
            borderRadius: BorderRadius.circular(capsuleShape ? 40 : 6)),
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon);
  }
}
