import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../gen/colors.gen.dart';

class CommonBackButton extends StatelessWidget {
  const CommonBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.router.pop(),
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            // Colors.white,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(5), bottomRight: Radius.circular(5))),
        child: const Icon(
          Icons.arrow_back_ios,
          color: ColorName.primary,
        ),
      ),
    );
  }
}
