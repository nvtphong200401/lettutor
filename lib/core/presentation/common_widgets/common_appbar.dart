import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Assets.images.appLogo.svg(height: 39),
      ),
      // leadingWidth: 200,
      backgroundColor: ColorName.background,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
