import 'package:flutter/material.dart';

import '../../../gen/colors.gen.dart';

mixin BuildWhiteContainerMixin {
  whiteBoxContainer({required Widget child}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      child: child,
    );
  }

  Container greyBoxContainer({required Widget child}) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: ColorName.cardhistory,
        ),
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(vertical: 12),
        child: child);
  }
}
