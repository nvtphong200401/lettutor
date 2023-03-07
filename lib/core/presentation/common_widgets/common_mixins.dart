import 'package:flutter/material.dart';

import '../../../gen/colors.gen.dart';

mixin BuildWhiteContainerMixin {
  whiteBoxContainer({required Widget child}) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      child: child,
    );
  }

  greyBoxContainer({required Widget child}) {
    return Container(
        color: ColorName.cardhistory,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(vertical: 12),
        child: child);
  }
}
