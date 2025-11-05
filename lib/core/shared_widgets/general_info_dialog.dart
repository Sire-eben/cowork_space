import 'package:breej_hub_mobile/core/utils/__utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

huzzInfoDialog({
  required BuildContext context,
  required Widget dialog,
  VoidCallback? onPressed,
  String? mainBtnText,
  bool oneButton = true,
}) {
  showCupertinoDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) => CupertinoAlertDialog(
      content: dialog,
      actions: [
        if (!oneButton)
          CupertinoButton(
            onPressed: () => context.pop(),
            child: Text("Cancel", style: TextStyle(color: AppColors.error)),
          ),
        CupertinoButton(
          onPressed: onPressed ?? () => context.pop(),
          child: Text(mainBtnText ?? "OK", style: TextStyle(color: AppColors.primary)),
        ),
      ],
    ),
  );
}

class HuzzErrorDialog extends StatelessWidget {
  const HuzzErrorDialog({super.key, this.message});
  final String? message;

  @override
  Widget build(BuildContext context) {
    return huzzInfoDialog(
      context: context,
      dialog: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.info_outline_rounded, size: 27, color: Colors.red),
          const SizedBox(height: 7),
          Text(
            message ?? "Something went wrong",
            textAlign: TextAlign.center,
            style: AppStyles.interGeneral(12, FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
