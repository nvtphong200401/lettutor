import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lettutor/core/presentation/common_styles/common_styles.dart';
import 'package:lettutor/core/presentation/extensions.dart';
import 'package:lettutor/gen/colors.gen.dart';

const categories = [
  'Vietnamese Tutor',
  'Foreign Tutor',
  'Native English Tutor',
  'Vietnamese Tutor 1',
  'Foreign Tutor 1',
  'Foreign Tutor 2',
  'Vietnamese Tutor 2',
  'EST',
  'JPese Tutor ',
  'Chinese Tutor ',
  'Sing Tutor ',
  'EU Tutor ',
  'JPese Tutor 1',
  'Chinese Tutor 1',
  'JPese Tutor 2',
  'Chinese Tutor 2',
  'Sing Tutor 2',
  'EU Tutor 2',
];

const levels = [
  'LV1',
  'Beginner',
  'Intermediate',
  'LV3',
  'LV5',
];

class DropdownFieldMultipleSelection extends HookWidget {
  const DropdownFieldMultipleSelection({
    Key? key,
    required this.data,
    required this.title,
    required this.valuesSelected,
  }) : super(key: key);
  final List<String> data;
  final String title;
  final ValueNotifier<Set<String>> valuesSelected;

  @override
  Widget build(BuildContext context) {
    final txtController = useTextEditingController();
    // final valuesSelected = useValueNotifier<Set<String>>({});
    final focusNode = useFocusNode();
    final hasFocus = useValueNotifier(false);

    final OverlayState overlayState = Overlay.of(context);
    late OverlayEntry overlay;

    OverlayEntry createOverlayEntry(
      parentCtx, {
      required ValueNotifier<Set<String>> valuesSelected,
      required FocusNode focusNode,
      required TextEditingController txtController,
    }) {
      RenderBox renderBox = context.findRenderObject() as RenderBox;

      var size = renderBox.size;
      var offset = renderBox.localToGlobal(Offset.zero);
      final filterData = data;

      return OverlayEntry(
        maintainState: true,
        builder: (context) {
          final screenHeight = context.screenSize.height;

          final double height =
              filterData.length * 34 > screenHeight / 3 ? screenHeight / 3 : filterData.length * 34;

          return ValueListenableBuilder(
              valueListenable: valuesSelected,
              builder: (context, selected, _) {
                double top = offset.dy + size.height > screenHeight * 2 / 3
                    ? offset.dy - height - 5
                    : offset.dy + size.height + 5.0;
                return Positioned(
                  left: offset.dx,
                  top: top,
                  width: size.width,
                  height: height,
                  child: Material(
                    elevation: 4.0,
                    child: ValueListenableBuilder<Set<String>>(
                        valueListenable: valuesSelected,
                        builder: (_, values, __) {
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            itemBuilder: (_, index) {
                              final item = filterData[index];
                              return CupertinoButton(
                                padding: EdgeInsets.zero,
                                minSize: 10,
                                onPressed: () {
                                  if (values.contains(item)) {
                                    valuesSelected.value = {...values..remove(item)};
                                  } else {
                                    valuesSelected.value = {...values, item};
                                  }
                                  WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                                    if (overlay.mounted) {
                                      overlay.remove();

                                      overlay = createOverlayEntry(
                                        parentCtx,
                                        valuesSelected: valuesSelected,
                                        focusNode: focusNode,
                                        txtController: txtController,
                                      );
                                      Overlay.of(context).insert(overlay);
                                    }
                                  });
                                },
                                child: SelectDropdownItem(
                                  text: item,
                                  isSelected: values.contains(item),
                                ),
                              );
                            },
                            itemCount: filterData.length,
                          );
                        }),
                  ),
                );
              });
        },
      );
    }

    useEffect(() {
      checkFocus() {
        if (focusNode.hasFocus) {
          overlay = createOverlayEntry(
            context,
            valuesSelected: valuesSelected,
            focusNode: focusNode,
            txtController: txtController,
          );
          overlayState.insert(overlay);
        } else {
          overlay.remove();
        }
        hasFocus.value = focusNode.hasFocus;
      }

      focusNode.addListener(() => checkFocus());
      return () => focusNode.removeListener(() => checkFocus());
    }, const []);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            if (!focusNode.hasFocus) {
              focusNode.requestFocus();
            }
          },
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
                side: BorderSide(
                    color: useValueListenable(hasFocus) ? ColorName.primary : Colors.grey),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: ValueListenableBuilder(
                    valueListenable: valuesSelected,
                    builder: (context, values, _) {
                      return Wrap(
                        runSpacing: 5,
                        spacing: 5,
                        children: [
                          ...values
                              .map(
                                (selected) => SelectedTextItem(
                                  text: selected,
                                  discard: () {
                                    changeOverlayPosition(focusNode);
                                    valuesSelected.value = {
                                      ...values..remove(selected),
                                    };
                                  },
                                ),
                              )
                              .toList(),
                          TextField(
                            controller: txtController,
                            style: CommonTextStyle.textSize16,
                            focusNode: focusNode,
                            decoration: InputDecoration(
                              hintText: values.isNotEmpty ? '' : title,
                              hintStyle: CommonTextStyle.textSize14.copyWith(color: ColorName.grey),
                              border: InputBorder.none,
                              isDense: true,
                              contentPadding: const EdgeInsets.all(3),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(width: 3),
                ValueListenableBuilder(
                  valueListenable: valuesSelected,
                  builder: (_, values, __) {
                    return values.isEmpty
                        ? ValueListenableBuilder(
                            valueListenable: hasFocus,
                            builder: (ctx, value, _) {
                              return value ? icon(Icons.search) : icon(Icons.keyboard_arrow_down);
                            })
                        : Clickable(
                            child: icon(Icons.close),
                            onPressed: () {
                              changeOverlayPosition(focusNode);
                              valuesSelected.value = <String>{};
                            },
                          );
                  },
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  void changeOverlayPosition(FocusNode focusNode) {
    focusNode.unfocus();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      // focusNode.unfocus();
      focusNode.requestFocus();
    });
  }

  void clearItem(ValueNotifier<Set> valueNotifier, String item) {
    valueNotifier.value.remove(item);
  }

  Widget icon(iconData) => Icon(
        iconData,
        color: Colors.grey,
        size: 18,
      );
}

class SelectedTextItem extends HookWidget {
  const SelectedTextItem({
    Key? key,
    required this.text,
    this.discard,
  }) : super(key: key);
  final String text;
  final Function? discard;

  @override
  Widget build(BuildContext context) {
    final Widget item = useMemoized(() {
      const textStyle = CommonTextStyle.textSize16;
      final calWidth = (context.screenSize.width - 10 * 2) - 35;
      final child = Text(
        text,
        style: textStyle,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      );
      if (text.length * textStyle.fontSize! * 0.53 > calWidth) {
        return Expanded(child: child);
      } else {
        return child;
      }
    }, [text]);
    return Container(
      // width: 200,
      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
      decoration: ShapeDecoration(
        color: Colors.grey.shade200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2),
          side: const BorderSide(color: Colors.grey, width: 0.2),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          item,
          Clickable(
            onPressed: () => discard?.call(),
            padding: const EdgeInsets.all(5),
            child: const Icon(
              Icons.close,
              color: Colors.grey,
              size: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget _calculateTextWidth(String text, double screenWidth) {
    const textStyle = CommonTextStyle.textSize16;
    final value = (screenWidth - 10 - 20 * 2) / 2 - 5 * 2 - 2 - 20 - 3 - 8 - 2 - 26;
    final child = Text(
      text,
      style: textStyle,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
    print(text.length * textStyle.fontSize! * 0.53);
    print(value);
    if (text.length * textStyle.fontSize! * 0.53 > value) {
      return Expanded(child: child);
    } else {
      return child;
    }
  }
}

class SelectDropdownItem extends StatelessWidget {
  const SelectDropdownItem({
    Key? key,
    required this.text,
    required this.isSelected,
  }) : super(key: key);
  final bool isSelected;
  final String text;

  @override
  Widget build(BuildContext context) {
    const padding = 7.0;
    return Align(
      alignment: Alignment.centerLeft,
      child: isSelected
          ? Container(
              padding: const EdgeInsets.all(padding),
              color: ColorName.primary.withOpacity(0.2),
              height: 34,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      text,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: CommonTextStyle.textSize16.copyWith(
                        fontWeight: FontWeight.w600,
                        color: ColorName.textColor,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.done,
                    size: 20,
                    color: ColorName.primary,
                  )
                ],
              ),
            )
          : Container(
              height: 34,
              padding: const EdgeInsets.all(padding),
              child: Text(
                text,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: CommonTextStyle.textSize16.copyWith(color: ColorName.textColor),
              ),
            ),
    );
  }
}

class Clickable extends CupertinoButton {
  const Clickable({
    super.key,
    required super.onPressed,
    required super.child,
    super.padding = EdgeInsets.zero,
    super.minSize = 10,
    super.color,
    super.disabledColor,
    super.alignment,
    super.borderRadius,
    super.pressedOpacity,
  });
}
