import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lettutor/gen/colors.gen.dart';

class TitleWithChild extends StatelessWidget {
  const TitleWithChild(
      {super.key,
      required this.title,
      // this.controller,
      // this.autofocus = true,
      // this.obscureText = false,
      // this.hintText,
      required this.child});
  final String title;
  // final bool autofocus;
  // final TextEditingController? controller;
  // final bool obscureText;
  // final String? hintText;
  final Widget child;

  @override
  Widget build(BuildContext context) {
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
        // CommonTextFormField(
        //   autofocus: autofocus,
        //   obscureText: obscureText,
        //   controller: controller,
        //   hintText: hintText,
        // ),
        child,
        const SizedBox(
          height: 24,
        )
      ],
    );
  }
}

class CommonTextFormField extends HookWidget {
  const CommonTextFormField(
      {super.key,
      this.controller,
      this.autofocus = true,
      this.obscureText = false,
      this.hintText,
      this.capsuleShape = false,
      this.size,
      this.borderColor,
      this.onTap,
      this.focusNode,
      this.onChanged,
      this.prefixIcon,
      this.validator,
      this.onFieldSubmitted});
  final bool autofocus;
  final TextEditingController? controller;
  final bool obscureText;
  final String? hintText;
  final bool capsuleShape;
  final Size? size;
  final Color? borderColor;
  final void Function()? onTap;
  final void Function(String)? onChanged;
  final FocusNode? focusNode;
  final Widget? prefixIcon;
  final void Function(String)? onFieldSubmitted;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    final obscureState = useState(obscureText);
    Widget? suffixIcon() {
      if (obscureText == false) return null;
      return obscureState.value
          ? IconButton(
              icon: const Icon(Icons.visibility_off),
              onPressed: () {
                obscureState.value = !obscureState.value;
              },
            )
          : IconButton(
              onPressed: () {
                obscureState.value = !obscureState.value;
              },
              icon: const Icon(Icons.visibility));
    }

    return SizedBox(
      height: size?.height ?? 45,
      width: size?.width,
      child: TextFormField(
        onFieldSubmitted: onFieldSubmitted,
        cursorColor: ColorName.primary,
        focusNode: focusNode,
        onChanged: onChanged,
        onTap: onTap,
        validator: validator,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor ?? ColorName.grey, width: 1.5),
              borderRadius: BorderRadius.circular(capsuleShape ? 40 : 6)),
          contentPadding: const EdgeInsets.all(10),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorName.primary),
            borderRadius: BorderRadius.circular(capsuleShape ? 40 : 6),
          ),
          isDense: true,
          hintText: hintText,
          hintStyle: const TextStyle(color: ColorName.grey),
          suffixIcon: suffixIcon(),
          prefix: prefixIcon,
        ),
        obscureText: obscureState.value,
        controller: controller,
        autofocus: autofocus,
      ),
    );
  }
}
