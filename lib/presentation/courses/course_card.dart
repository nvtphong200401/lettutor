import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../core/presentation/common_styles/text_style.dart';

class CourseCard extends StatelessWidget {
  const CourseCard(
      {super.key,
      required this.imageUrl,
      required this.title,
      this.subtitle1,
      this.subtitle2,
      this.height = 340,
      this.width = 300,
      this.imageHeight,
      this.onTap});

  final String imageUrl;
  final String title;
  final String? subtitle1;
  final String? subtitle2;
  final double height;
  final double width;
  final double? imageHeight;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FadeInImage.memoryNetwork(
                  imageErrorBuilder: (context, error, stackTrace) {
                    return const SizedBox.shrink();
                  },
                  placeholder: kTransparentImage,
                  image: imageUrl,
                  height: imageHeight,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(8),
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Text(
                      title,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                    if (subtitle1 != null)
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 11),
                        child: Text(
                          subtitle1!,
                          style: CommonTextStyle.descCourse,
                          maxLines: 2,
                        ),
                      ),
                    if (subtitle2 != null) Text(subtitle2!),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
