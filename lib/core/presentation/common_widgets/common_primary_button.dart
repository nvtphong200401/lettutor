// import 'package:flutter/material.dart';
// import 'package:lettutor/gen/colors.gen.dart';

// class CommonPrimaryButton extends StatelessWidget {
//   const CommonPrimaryButton({
//     super.key,
//     this.onTap,
//     required this.child,
//     this.capsuleShape = false,
//     this.backgroundColor = ColorName.primary,
//     this.size = const Size(45, 45),
//     this.borderColor,
//     this.textColor = ColorName.background,
//   });
//   final void Function()? onTap;
//   final bool capsuleShape;
//   final Color backgroundColor;
//   final Size size;
//   final Color? borderColor;
//   final Color textColor;
//   final Widget child;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: size.height,
//       child: ElevatedButton(
//         onPressed: onTap,
//         style: ButtonStyle(
//             shape: MaterialStatePropertyAll(
//               RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(capsuleShape ? 45 : 6),
//                   side: borderColor != null
//                       ? BorderSide(color: borderColor!)
//                       : BorderSide.none),
//             ),
//             backgroundColor: MaterialStatePropertyAll(backgroundColor),
//             padding: const MaterialStatePropertyAll(
//                 EdgeInsets.symmetric(horizontal: 20, vertical: 5))),
//         child: child,
//       ),
//     );
//   }
// }
