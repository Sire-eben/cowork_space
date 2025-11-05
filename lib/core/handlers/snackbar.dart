import 'package:breej_hub_mobile/core/utils/__utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class SnackbarHandler {
  static void showErrorSnackbar({required BuildContext context, String? message, Widget? icon}) {
    return showTopSnackBar(
      Overlay.of(context),
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 12),
      Material(
        type: MaterialType.transparency,
        child: Container(
          // width: MediaQuery.sizeOf(context).width,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          decoration: BoxDecoration(
            color: AppColors.red,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.red),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              icon ?? const Icon(Icons.error, color: Colors.white),
              const Gap(12),
              Expanded(
                child: Text(
                  message ?? "An error occurred",
                  style: AppStyles.raleway12Rg.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static void showSuccessSnackbar({required BuildContext context, String? message, Widget? icon}) {
    return showTopSnackBar(
      Overlay.of(context),
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 12),
      Material(
        type: MaterialType.transparency,
        child: Container(
          // width: MediaQuery.sizeOf(context).width,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.primary),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              icon ?? const Icon(Icons.check_circle, color: Colors.white),
              const Gap(12),
              Expanded(
                child: Text(
                  message ?? "Successful",
                  style: AppStyles.raleway12Rg.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static void showHuzzDialog({
    required BuildContext context,
    String? message,
    Widget? child,
    VoidCallback? onPressed,
    bool oneButton = true,
  }) {
    huzzInfoDialog(
      oneButton: oneButton,
      context: context,
      dialog: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.info_outline_rounded, size: 27, color: Colors.red),
          const SizedBox(height: 7),
          if (child == null)
            Text(
              message ?? "Error",
              textAlign: TextAlign.center,
              style: AppStyles.raleway12Rg.copyWith(color: AppColors.black2),
            )
          else
            child,
        ],
      ),
      onPressed: onPressed ?? () => context.pop(),
    );
  }

  static void showApprovalDialog({
    required BuildContext context,
    String? message,
    Widget? child,
    VoidCallback? onPressed,
    bool oneButton = true,
  }) {
    huzzInfoDialog(
      oneButton: oneButton,
      context: context,
      dialog: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.info_outline_rounded, size: 27, color: Colors.red),
          const SizedBox(height: 7),
          if (child == null)
            Text(
              message ??
                  "Your account needs to be approved before you can proceed with this.\n\nKindly wait for approval or contact support team if you think this is an error.",
              textAlign: TextAlign.center,
              style: AppStyles.raleway12Rg.copyWith(color: AppColors.black2),
            )
          else
            child,
        ],
      ),
      onPressed: onPressed ?? () => context.pop(),
    );
  }
}

huzzInfoDialog({
  required BuildContext context,
  required Widget dialog,
  VoidCallback? onPressed,
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
            child: Text("Cancel", style: TextStyle(color: AppColors.red)),
          ),
        CupertinoButton(
          onPressed: onPressed ?? () => context.pop(),
          child: Text("Ok", style: TextStyle(color: AppColors.primary)),
        ),
      ],
    ),
  );
}
