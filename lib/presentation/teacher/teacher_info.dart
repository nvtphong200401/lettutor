import 'package:flutter/material.dart';

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
          children: const [
            Text(
              'Joan Gacer',
              style: TextStyle(
                  color: ColorName.textColor,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            Text('No reviews yet'),
            Text('Vietnam'),
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
