import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: Colors.blue,
      title: Padding(
        padding: EdgeInsets.zero,
        child: Assets.images.appLogo.svg(height: 45),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
