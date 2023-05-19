import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:lettutor/core/locales/app_locale.dart';
import 'package:lettutor/core/presentation/common_styles/text_style.dart';
import 'package:lettutor/core/presentation/common_widgets/constant.dart';
import 'package:lettutor/core/presentation/common_widgets/pagination_row.dart';
import 'package:lettutor/infrastructure/teacher/models/paginated_tutors.dart';
import 'package:lettutor/presentation/courses/tab_interactive_book.dart';
import 'package:lettutor/shared/teacher_providers.dart';

class FeedbackModal extends ConsumerStatefulWidget {
  const FeedbackModal({super.key, required this.tutorId});
  final String tutorId;

  @override
  ConsumerState<FeedbackModal> createState() => _FeedbackModalState();
}

class _FeedbackModalState extends ConsumerState<FeedbackModal> {
  List<FeedbackModel> feedbacks = [];
  int total = 0;
  int currentPage = 1;
  @override
  void initState() {
    super.initState();
    getFeedbacks(1);
  }

  Future getFeedbacks(int page) async {
    final res =
        await ref.read(teacherRepoProvider).getFeedbacks(tutorId: widget.tutorId, page: page);
    res.fold((l) => null, (r) {
      setState(() {
        total = r.data?.count ?? 0;
        currentPage = page;
        feedbacks = r.data?.rows ?? [];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (total == 0) {
      return NotFoundScreen(
        placeHolderString: AppLocale.noData.getString(context),
      );
    }
    final list = feedbacks.map((e) {
      final user = e.firstInfo;
      final rating = e.rating ?? 0;
      return ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(user?.avatar ?? defaultAvatar),
        ),
        title: Row(
          children: [
            Text(user?.name ?? ''),
            const SizedBox(
              width: 5,
            ),
            Text(DateFormat('yyyy-MM-dd').format(DateTime.parse(e.createdAt ?? '')))
          ],
        ),
        subtitle: Row(
          children: [
            ...List.filled(
                rating.toInt(),
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 20,
                )),
            ...List.filled(
                5 - rating.toInt(),
                Icon(
                  Icons.star,
                  color: Colors.grey.shade300,
                  size: 20,
                ))
          ],
        ),
      );
    }).toList();
    return ListView(
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Feedbacks',
                style: CommonTextStyle.titleCourse,
              ),
            ),
            Divider()
          ],
        ),
        ...list,
        Pager(
            totalPages: (total / 9).ceil(),
            currentPage: currentPage,
            onPageChanged: (page) async {
              if (page != currentPage) {
                await getFeedbacks(page);
              }
            })
      ],
    );
  }
}

// class FeedbackModal extends ConsumerWidget {
//   const FeedbackModal({super.key, required this.feedbacks});
//   final List<FeedbackModel> feedbacks;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
    
//     return ListView.builder(
//       itemBuilder: (context, index) {
//         if (index == 0) {
//           return Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: const [
//               SizedBox(
//                 height: 10,
//               ),
//               Padding(
//                 padding: EdgeInsets.only(left: 8.0),
//                 child: Text(
//                   'Feedbacks',
//                   style: CommonTextStyle.titleCourse,
//                 ),
//               ),
//               Divider()
//             ],
//           );
//         }
//         index = index - 1;
//         final user = feedbacks[index].firstInfo;
//         final rating = feedbacks[index].rating ?? 0;
//         return ListTile(
//           leading: CircleAvatar(
//             backgroundImage: NetworkImage(user?.avatar ?? defaultAvatar),
//           ),
//           title: Row(
//             children: [
//               Text(user?.name ?? ''),
//               const SizedBox(
//                 width: 5,
//               ),
//               Text(
//                   DateFormat('yyyy-MM-dd').format(DateTime.parse(feedbacks[index].createdAt ?? '')))
//             ],
//           ),
//           subtitle: Row(
//             children: [
//               ...List.filled(
//                   rating.toInt(),
//                   const Icon(
//                     Icons.star,
//                     color: Colors.amber,
//                     size: 20,
//                   )),
//               ...List.filled(
//                   5 - rating.toInt(),
//                   Icon(
//                     Icons.star,
//                     color: Colors.grey.shade300,
//                     size: 20,
//                   ))
//             ],
//           ),
//         );
//       },
//       itemCount: feedbacks.length + 1,
//     );
//   }
// }
