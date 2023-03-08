import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../gen/colors.gen.dart';

class TeacherInfo extends StatelessWidget {
  const TeacherInfo({
    super.key,
    this.favIcon = true,
  });
  final bool favIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CircleAvatar(
          radius: 30,
          foregroundImage: NetworkImage(
              'https://api.app.lettutor.com/avatar/8c4e58c4-e9d1-4353-b64d-41b573c5a3e9avatar1632284832414.jpg'),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Joan Gacer',
              style: TextStyle(color: ColorName.primary, fontSize: 20, fontWeight: FontWeight.w600),
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
        if (favIcon)
          const Icon(
            Icons.favorite,
            color: Colors.red,
          )
      ],
    );
  }
}
