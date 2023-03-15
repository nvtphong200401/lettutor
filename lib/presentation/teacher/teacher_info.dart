import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../gen/colors.gen.dart';

class TeacherInfo extends StatelessWidget {
  const TeacherInfo({
    super.key,
    this.isFavorite,
    required this.avatar,
    required this.name,
  });
  final bool? isFavorite;
  final String avatar;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 30,
          foregroundImage: NetworkImage(avatar),
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
        if (isFavorite != null)
          HookBuilder(builder: (context) {
            final fav = useState(isFavorite!);
            final icon = fav.value
                ? const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )
                : const Icon(
                    Icons.favorite_outline,
                    color: ColorName.primary,
                  );
            return GestureDetector(
              onTap: () => fav.value = !fav.value,
              child: icon,
            );
          })
      ],
    );
  }
}
