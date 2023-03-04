import 'package:flutter/material.dart';
import 'package:lettutor/gen/colors.gen.dart';

class CommonPrimaryButton extends StatelessWidget {
  const CommonPrimaryButton({super.key, this.onTap, required this.text});
  final void Function()? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ElevatedButton(
          onPressed: onTap,
          style: ButtonStyle(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6))),
              backgroundColor:
                  const MaterialStatePropertyAll(ColorName.primary),
              padding: const MaterialStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 20, vertical: 10))),
          child: Text(
            text,
            style: const TextStyle(color: ColorName.background),
          )),
    );
  }
}
