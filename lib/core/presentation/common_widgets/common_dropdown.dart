import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../gen/colors.gen.dart';

class CommonDropdownButton extends HookWidget {
  const CommonDropdownButton(
      {super.key,
      required this.items,
      required this.hintText,
      this.width,
      required this.selection,
      this.onChanged});
  final List<String> items;
  final String hintText;
  final double? width;
  final ValueNotifier<String?> selection;
  final void Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButton2(
        dropdownStyleData: DropdownStyleData(
          offset: const Offset(0, 0),
          width: width ?? 250,
        ),
        isExpanded: true,
        buttonStyleData: ButtonStyleData(
          height: 42,
          padding: const EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            border: Border.all(color: ColorName.grey, width: 1.5),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        underline: const SizedBox.shrink(),
        value: useValueListenable(selection),
        menuItemStyleData: const MenuItemStyleData(
          height: 44,
        ),
        onChanged: (value) {
          selection.value = value.toString();
        },
        hint: Text(
          hintText,
          style: const TextStyle(color: ColorName.grey),
        ),
        items: items.map((e) => DropdownMenuItem(value: e, child: Text(e))).toList());
  }
}
