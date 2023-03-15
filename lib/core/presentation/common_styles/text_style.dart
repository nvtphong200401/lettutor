import 'package:flutter/material.dart';

import '../../../gen/colors.gen.dart';

class CommonTextStyle {
  CommonTextStyle._();
  static const textSize30 = TextStyle(fontSize: 30);
  static const textSize24 = TextStyle(fontSize: 24);
  static const title = TextStyle(fontSize: 22, fontWeight: FontWeight.w600);
  static const content = TextStyle(fontSize: 14, color: ColorName.textColor);
  static const textSize20 = TextStyle(fontSize: 20);
  static const textSize18 = TextStyle(fontSize: 18);
  static const textSize16 = TextStyle(fontSize: 16, color: ColorName.textColor);
  static const textSize15 = TextStyle(fontSize: 15, color: ColorName.textColor);

  static const textSize14 = TextStyle(fontSize: 14);
  static const textSize12 = TextStyle(fontSize: 12);
  static const partTitle = TextStyle(fontSize: 17, color: ColorName.textColor);
  static const partContent = TextStyle(fontSize: 17, color: ColorName.textColor);
  static const partTitleDesc =
      TextStyle(fontSize: 16, color: ColorName.textColor, fontWeight: FontWeight.w700);
  static const partDesc = TextStyle(fontSize: 14, color: ColorName.partDesc);
// style in course screen
  static const titleCourse =
      TextStyle(fontSize: 22, color: ColorName.textColor, fontWeight: FontWeight.w600);
  static const descCourse = TextStyle(fontSize: 12, color: ColorName.courseDesc);
}
