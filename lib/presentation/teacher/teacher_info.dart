import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/application/teacher/providers.dart';
import 'package:lettutor/infrastructure/teacher/models/teacher_model.dart';

import '../../gen/colors.gen.dart';

class TeacherInfo extends StatelessWidget {
  const TeacherInfo({
    super.key,
    required this.info,
    this.toggleFavorite,
  });
  final TeacherModel info;
  final void Function()? toggleFavorite;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 30,
          foregroundImage: NetworkImage(info.avatar),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              info.name,
              style: const TextStyle(
                  color: ColorName.primary, fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              children: List.filled(
                  5,
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 20,
                  )),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SvgPicture.network(
                  'https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.4.3/flags/4x3/vn.svg',
                  width: 18,
                  height: 18,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text('Vietnam'),
              ],
            ),
          ],
        ),
        const Spacer(),
        if (toggleFavorite != null)
          Consumer(builder: (context, ref, child) {
            final fav = ref
                .watch(teachersProvider.select((value) => value.teachersMap[info.id]!.isFavorite));
            final icon = fav
                ? const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )
                : const Icon(
                    Icons.favorite_outline,
                    color: ColorName.primary,
                  );
            return GestureDetector(
              onTap: toggleFavorite,
              child: icon,
            );
          })
      ],
    );
  }
}
