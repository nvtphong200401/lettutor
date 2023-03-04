import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lettutor/gen/colors.gen.dart';

class CommonInputField extends HookWidget {
  const CommonInputField({
    super.key,
    required this.title,
    this.controller,
    this.autofocus = true,
    this.obscureText = false,
    this.hintText,
  });
  final String title;
  final bool autofocus;
  final TextEditingController? controller;
  final bool obscureText;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    final obscureState = useState(obscureText);
    Widget? suffixIcon() {
      if (obscureText == false) return null;
      return obscureState.value
          ? IconButton(
              icon: const Icon(Icons.visibility),
              onPressed: () {
                obscureState.value = !obscureState.value;
              },
            )
          : IconButton(
              onPressed: () {
                obscureState.value = !obscureState.value;
              },
              icon: const Icon(Icons.visibility_off));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(color: ColorName.grey),
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          height: 45,
          child: TextFormField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: ColorName.primary),
                  borderRadius: BorderRadius.circular(6)),
              isDense: true,
              hintText: hintText,
              hintStyle: const TextStyle(color: ColorName.grey),
              border: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: ColorName.grey, width: 1.5),
                  borderRadius: BorderRadius.circular(8)),
              suffixIcon: suffixIcon(),
            ),
            obscureText: obscureState.value,
            controller: controller,
            autofocus: autofocus,
          ),
        ),
        const SizedBox(
          height: 24,
        )
      ],
    );
  }
}
