// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';

// class PreviewWidget extends HookWidget {
//   const PreviewWidget(
//     this.controller, {
//     required this.micNotifier,
//     required this.cameraNotifier,
//     required this.raiseHandNotifier,
//     Key? key,
//   }) : super(key: key);

//   final CameraController controller;
//   final ValueNotifier<bool> micNotifier;
//   final ValueNotifier<bool> cameraNotifier;
//   final ValueNotifier<bool> raiseHandNotifier;

//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width / 4;
//     return Container(
//       width: width,
//       height: 9 * width / 16,
//       margin: const EdgeInsets.all(16.0),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(4.0),
//       ),
//       child: Stack(
//         children: [
//           Positioned.fill(
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(4.0),
//               child: CameraPreview(controller),
//             ),
//           ),
//           Positioned.fill(
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(4.0),
//                 color: Colors.black.withOpacity(0.5),
//               ),
//             ),
//           ),
//           const Align(
//             alignment: Alignment.bottomLeft,
//             child: Padding(
//               padding: EdgeInsets.only(bottom: 4.0, left: 2.0),
//               child: Icon(
//                 Icons.more_vert,
//                 color: Colors.white,
//                 size: 12.0,
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment.topLeft,
//             child: Padding(
//               padding: const EdgeInsets.only(bottom: 4.0, left: 2.0),
//               child: Row(
//                 children: [
//                   Container(
//                     padding: const EdgeInsets.all(2.0),
//                     margin: const EdgeInsets.all(2.0),
//                     decoration: const BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Colors.white,
//                     ),
//                     child: Container(
//                       padding: const EdgeInsets.all(4.0),
//                       decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.green),
//                       child: const Icon(
//                         Icons.network_cell,
//                         color: Colors.white,
//                         size: 8.0,
//                       ),
//                     ),
//                   ),
//                   HookBuilder(builder: (context) {
//                     final raiseHand = useValueListenable(raiseHandNotifier);
//                     return Visibility(
//                       visible: raiseHand,
//                       child: Container(
//                         padding: const EdgeInsets.all(2.0),
//                         margin: const EdgeInsets.all(2.0),
//                         decoration: const BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: Colors.white,
//                         ),
//                         child: Container(
//                           padding: const EdgeInsets.all(4.0),
//                           decoration:
//                               const BoxDecoration(shape: BoxShape.circle, color: Colors.orange),
//                           child: const Icon(
//                             Icons.back_hand,
//                             color: Colors.white,
//                             size: 8.0,
//                           ),
//                         ),
//                       ),
//                     );
//                   }),
//                 ],
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomRight,
//             child: Padding(
//               padding: const EdgeInsets.only(bottom: 4.0, right: 4.0),
//               child: Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   HookBuilder(builder: (context) {
//                     final mic = useValueListenable(micNotifier);
//                     return Visibility(
//                       visible: !mic,
//                       child: const Icon(
//                         Icons.mic_off,
//                         color: Colors.white,
//                         size: 12.0,
//                       ),
//                     );
//                   }),
//                   const SizedBox(width: 4.0),
//                   HookBuilder(builder: (context) {
//                     final camera = useValueListenable(cameraNotifier);
//                     return Visibility(
//                       visible: !camera,
//                       child: const Icon(
//                         Icons.videocam_off_outlined,
//                         color: Colors.white,
//                         size: 12.0,
//                       ),
//                     );
//                   }),
//                   const SizedBox(width: 4.0),
//                   const Icon(
//                     Icons.star_border,
//                     color: Colors.white,
//                     size: 12.0,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
