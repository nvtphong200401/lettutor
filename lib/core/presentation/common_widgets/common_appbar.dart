import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/gen/colors.gen.dart';
import 'package:lettutor/shared/user_providers.dart';

import '../../../gen/assets.gen.dart';

class CommonAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const CommonAppBar({
    super.key,
    this.isLogin = false,
  });
  final bool isLogin;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userNotifierProvider);
    return AppBar(
      leading: context.router.canPop()
          ? GestureDetector(
              onTap: () => context.router.pop(),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Theme.of(context).appBarTheme.backgroundColor,
                    borderRadius: BorderRadius.circular(50)),
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: ColorName.primary,
                ),
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
      actions: [
        if (!isLogin)
          user.maybeWhen(
            orElse: () => const SizedBox.shrink(),
            data: (data) => GestureDetector(
              onTap: () => Scaffold.of(context).openEndDrawer(),
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(data.user?.avatar ?? ''),
                ),
              ),
            ),
          )
      ],
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
