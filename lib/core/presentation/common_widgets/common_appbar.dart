import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lettutor/gen/colors.gen.dart';

import '../../../gen/assets.gen.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: context.router.canPop()
          ? Container(
              width: 50,
              height: 50,
              decoration:
                  BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: const Icon(
                Icons.arrow_back_ios,
                color: ColorName.primary,
              ),
            )
          : null,
      foregroundColor: Colors.blue,
      title: Padding(
        padding: EdgeInsets.zero,
        child: Hero(
          tag: 'app_logo',
          child: Assets.images.appLogo.svg(height: 45),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

// class LeadingButtonAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const LeadingButtonAppBar({super.key});
//   @override
//   Size get preferredSize => const Size.fromHeight(60);

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//         leading: context.router.canPop()
//             ? Container(
//                 width: 50,
//                 height: 50,
//                 decoration:
//                     BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)),
//                 child: const Icon(
//                   Icons.arrow_back_ios,
//                   color: ColorName.primary,
//                 ),
//               )
//             : null);
//   }
// }
