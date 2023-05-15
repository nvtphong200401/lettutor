import 'package:flutter/material.dart';

class ItemsPerPage extends StatefulWidget {
  const ItemsPerPage({
    Key? key,
    required this.currentItemsPerPage,
    required this.itemsPerPage,
    required this.onChanged,
    this.itemsPerPageText,
    this.itemsPerPageTextStyle,
    this.dropDownMenuItemTextStyle,
  }) : super(key: key);
  final int currentItemsPerPage;
  final List<int> itemsPerPage;
  final Function(int) onChanged;
  final String? itemsPerPageText;
  final TextStyle? itemsPerPageTextStyle, dropDownMenuItemTextStyle;

  @override
  State<ItemsPerPage> createState() => _ItemsPerPageState();
}

class _ItemsPerPageState extends State<ItemsPerPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          widget.itemsPerPageText ?? "Items per page: ",
          style: widget.itemsPerPageTextStyle ??
              const TextStyle(
                color: Colors.grey,
              ),
        ),
        const SizedBox(width: 16),
        DropdownButton(
          value: widget.currentItemsPerPage,
          focusColor: Colors.transparent,
          items: widget.itemsPerPage.map((value) {
            return DropdownMenuItem<int>(
              value: value,
              child: Text(
                value.toString(),
                style: widget.dropDownMenuItemTextStyle ??
                    const TextStyle(
                      fontSize: 14,
                    ),
              ),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              widget.onChanged(value as int);
            });
          },
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class Pager extends StatefulWidget {
  Pager({
    Key? key,
    required this.totalPages,
    required this.onPageChanged,
    this.currentItemsPerPage,
    this.itemsPerPageList,
    this.pagesView = 3,
    this.currentPage = 1,
    this.numberButtonSelectedColor = Colors.blue,
    this.numberTextSelectedColor = Colors.white,
    this.numberTextUnselectedColor = Colors.black,
    this.pageChangeIconColor = Colors.grey,
    this.itemsPerPageText,
    this.itemsPerPageTextStyle,
    this.dropDownMenuItemTextStyle,
  })  : assert(currentPage > 0 && totalPages > 0 && pagesView > 0,
            "Fatal Error: Make sure the currentPage, totalPages and pagesView fields are greater than zero. "),
        super(key: key);

  /// How many page numbers selectable to show at once.
  int pagesView;

  /// Total pages.
  final int totalPages;

  /// The callback that is called when the page is changed.
  final Function(int) onPageChanged;

  /// Current items per page.
  final int? currentItemsPerPage;

  /// Items per page list. Example: [5,10,20,50]
  List<int>? itemsPerPageList;

  /// Current page. Default is 1.
  int currentPage;

  // Button color of the selected page number.
  final Color numberButtonSelectedColor;

  // Text color of the selected page number.
  final Color numberTextUnselectedColor;

  // Text color of the unselected page numbers.
  final Color numberTextSelectedColor;

  // Color of the next, previous, first and last page icons.
  final Color pageChangeIconColor;

  // ItemsPerPage label text.
  final String? itemsPerPageText;

  // ItemsPerPage label text style.
  final TextStyle? itemsPerPageTextStyle;

  // DropDownButtonMenuItem text style.
  final TextStyle? dropDownMenuItemTextStyle;

  @override
  State<Pager> createState() => _PagerState();
}

class _PagerState extends State<Pager> {
  @override
  Widget build(BuildContext context) {
    pagesViewValidation();
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                tooltip: "First Page",
                onPressed: () {
                  setState(() {
                    widget.currentPage = 1;
                    widget.onPageChanged(widget.currentPage);
                  });
                },
                splashRadius: 25,
                icon: Icon(
                  Icons.first_page,
                  color: widget.pageChangeIconColor,
                ),
              ),
              IconButton(
                tooltip: "Previous",
                onPressed: () {
                  setState(() {
                    widget.currentPage = widget.currentPage > 1 ? widget.currentPage - 1 : 1;
                    widget.onPageChanged(widget.currentPage);
                  });
                },
                splashRadius: 25,
                icon: Icon(
                  Icons.chevron_left,
                  color: widget.pageChangeIconColor,
                ),
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (int i = getPageStart(getPageEnd()); i < getPageEnd(); i++)
                    TextButton(
                      onPressed: () {
                        setState(() {
                          widget.currentPage = i;
                          widget.onPageChanged(widget.currentPage);
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor:
                              widget.currentPage == i ? widget.numberButtonSelectedColor : null),
                      child: Text(
                        "$i",
                        style: TextStyle(
                          color: widget.currentPage == i
                              ? widget.numberTextSelectedColor
                              : widget.numberTextUnselectedColor,
                        ),
                      ),
                    ),
                ],
              ),
              IconButton(
                tooltip: "Next Page",
                onPressed: () {
                  setState(() {
                    widget.currentPage = widget.currentPage < widget.totalPages
                        ? widget.currentPage + 1
                        : widget.totalPages;
                    widget.onPageChanged(widget.currentPage);
                  });
                },
                splashRadius: 25,
                icon: Icon(
                  Icons.chevron_right,
                  color: widget.pageChangeIconColor,
                ),
              ),
              IconButton(
                tooltip: "Last Page",
                onPressed: () {
                  setState(() {
                    widget.currentPage = widget.totalPages;
                    widget.onPageChanged(widget.currentPage);
                  });
                },
                splashRadius: 25,
                icon: Icon(
                  Icons.last_page,
                  color: widget.pageChangeIconColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Get last page to show in pagination.
  int getPageEnd() {
    return widget.currentPage + widget.pagesView > widget.totalPages
        ? widget.totalPages + 1
        : widget.currentPage + widget.pagesView;
  }

  /// Get first page to show in pagination.
  int getPageStart(int pageEnd) {
    return pageEnd == widget.totalPages + 1 ? pageEnd - widget.pagesView : widget.currentPage;
  }

  /// Validation of pagesView field
  void pagesViewValidation() {
    if (widget.totalPages < widget.pagesView) {
      widget.pagesView = widget.totalPages;
    }
  }
}
