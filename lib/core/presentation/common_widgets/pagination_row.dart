import 'package:flutter/material.dart';

import '../../../gen/colors.gen.dart';

class PaginationRow extends StatelessWidget {
  const PaginationRow(
      {super.key,
      required this.pageLength,
      required this.currentPage,
      required this.onPrevious,
      required this.onNext,
      required this.onTapIndex
      // required this.searchNameController,
      // required this.specialtiesNotifier,
      });

  final int pageLength;
  // final TextEditingController searchNameController;
  // final ValueNotifier<String> specialtiesNotifier;
  final int currentPage;
  final void Function() onPrevious;
  final void Function() onNext;
  final void Function(int index) onTapIndex;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (int index = 0; index < pageLength + 2; ++index)
            GestureDetector(
              onTap: () {
                if ((index == 0 && currentPage - 1 < 1) ||
                    (index == pageLength + 1 && currentPage + 1 > pageLength)) {
                  return;
                }

                if (index == 0) {
                  onPrevious.call();
                } else if (index == pageLength + 1) {
                  onNext.call();
                } else {
                  onTapIndex(index);
                }
              },
              child: Container(
                padding: index == 0 || index == pageLength + 1
                    ? const EdgeInsets.all(8)
                    : const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: index == currentPage
                            ? ColorName.primary
                            : (index == 0 && currentPage == 1) ||
                                    (index == pageLength + 1 && currentPage == pageLength)
                                ? ColorName.inactiveTag
                                : ColorName.courseDesc),
                    borderRadius: BorderRadius.circular(100)),
                child: Builder(builder: (context) {
                  if (index == 0) {
                    return const Padding(
                      padding: EdgeInsets.zero,
                      child: Icon(
                        Icons.keyboard_arrow_left,
                        size: 18,
                      ),
                    );
                  }
                  if (index == pageLength + 1) {
                    return const Padding(
                      padding: EdgeInsets.zero,
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        size: 18,
                      ),
                    );
                  }
                  return Text(
                    '$index',
                    style: TextStyle(
                      color: currentPage == index ? ColorName.primary : null,
                    ),
                  );
                }),
              ),
            )
        ],
      ),
    );
  }
}
