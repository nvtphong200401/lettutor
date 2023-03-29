import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:lettutor/infrastructure/teacher/models/tutor_detail_model.dart';

import '../../core/presentation/common_styles/text_style.dart';
import '../../core/presentation/common_styles/textfield_style.dart';
import '../../gen/colors.gen.dart';

class RatingHistory extends StatelessWidget {
  const RatingHistory({super.key});

  @override
  Widget build(BuildContext context) {
    final tutor = TutorDetail.init();
    final teacher = tutor.user;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 30,
              foregroundImage: NetworkImage(teacher.avatar),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              teacher.name,
              style: CommonTextStyle.partTitle,
            ),
            const SizedBox(
              height: 5,
            ),
            const Text('Lesson Time'),
            const Text(
              'Mon, 20 Mar 23, 18:00 - 18:25',
              style: CommonTextStyle.partTitle,
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(),
            const SizedBox(
              height: 5,
            ),
            Text(
              'What is your rating for ${teacher.name}',
              style: CommonTextStyle.partTitle,
            ),
            const SizedBox(
              height: 5,
            ),
            RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              cursorColor: ColorName.primary,
              maxLines: 3,
              decoration: CommonTextFieldStyle.primaryInputDecoration.customCopyWith(
                  hintText: 'Content Review',
                  hintStyle: const TextStyle(color: ColorName.grey, fontSize: 15)),
            ),
          ],
        ),
      ),
    );
  }
}
