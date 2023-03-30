import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/shared/teacher_providers.dart';

import '../../gen/colors.gen.dart';

class TeacherInfo extends StatelessWidget {
  const TeacherInfo(
      {super.key,
      this.toggleFavorite,
      required this.id,
      required this.avatar,
      required this.name,
      this.rating,
      this.totalRating});
  final void Function()? toggleFavorite;
  final String avatar;
  final String name;
  final String id;
  final double? rating;
  final int? totalRating;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // CircleAvatar(
        //   radius: 30,
        //   foregroundImage: NetworkImage(avatar),
        // ),
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.network(
            avatar,
            errorBuilder: (context, error, stackTrace) {
              return Image.network(
                'https://i0.wp.com/sbcf.fr/wp-content/uploads/2018/03/sbcf-default-avatar.png?w=300&ssl=1',
                width: 60,
                height: 60,
              );
            },
            fit: BoxFit.cover,
            width: 60,
            height: 60,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                  color: ColorName.primary, fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 2,
            ),
            if (rating != null)
              Row(
                children: [
                  ...List.filled(
                      rating!.toInt(),
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 20,
                      )),
                  ...List.filled(
                      5 - rating!.toInt(),
                      Icon(
                        Icons.star,
                        color: Colors.grey.shade300,
                        size: 20,
                      ))
                ],
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
            final icon =
                (ref.watch(teacherCardNotifierProvider(id).select((value) => value?.isFavorite)) ??
                        false)
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
