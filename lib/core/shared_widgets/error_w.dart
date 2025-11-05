// import 'package:blueroomcare_therapist/core/shared_widgets/image.dart';
// import 'package:blueroomcare_therapist/core/utils/__utils.dart';
// import 'package:flutter/material.dart';

// class ErrorW extends StatelessWidget {
//   const ErrorW(
//       {super.key,
//       this.message,
//       this.onPressed,
//       required this.icon,
//       this.bttnText,
//       this.iconSize});
//   final String? message, bttnText;
//   final String icon;
//   final VoidCallback? onPressed;
//   final double? iconSize;

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           LocalSvgIcon(icon, size: 100, color: AppColors.primary),
//           VerticalSpace(),
//           Text(
//             message ?? "Something went wrong",
//             textAlign: TextAlign.center,
//           ),
//           VerticalSpace(value: 22),
//           if (onPressed != null)
//             AppButton(
//               onPressed: onPressed,
//               text: bttnText ?? "Reload",
//             )
//         ],
//       ),
//     );
//   }
// }
