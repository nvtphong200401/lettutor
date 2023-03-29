import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lettutor/gen/colors.gen.dart';

class CommonDialog {
  CommonDialog(this.context);
  BuildContext context;
  Future infoDialog({required String title, required String body}) => _commonDialog(
        title: title,
        body: body,
        icon: Icons.info_outline,
        iconColor: ColorName.grey,
      );

  Future errorDialog({
    required String title,
    required String body,
  }) =>
      _commonDialog(
          title: title,
          body: body,
          icon: Icons.cancel_outlined,
          iconColor: Colors.red,
          textColor: Colors.red);
  Future loadingDialog() {
    return _commonDialog(
        title: '',
        body: 'Loading...',
        barrierDismissible: false,
        okButton: false,
        child: const Center(
          child: CircularProgressIndicator(),
        ));
  }

  Future _commonDialog(
          {required String title,
          required String body,
          IconData? icon,
          Widget? child,
          Color? textColor,
          bool barrierDismissible = true,
          bool okButton = true,
          Color? iconColor}) =>
      showDialog(
          barrierDismissible: barrierDismissible,
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text(
                title,
                style: TextStyle(color: textColor),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (icon != null)
                    Icon(
                      icon,
                      size: 50,
                      color: iconColor,
                    ),
                  if (child != null) child,
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    body,
                    style: TextStyle(color: textColor),
                  ),
                ],
              ),
              actions: [
                if (okButton)
                  TextButton(
                    style: const ButtonStyle(
                        overlayColor: MaterialStatePropertyAll(ColorName.activeTag)),
                    onPressed: () {
                      context.router.pop();
                    },
                    child: const Text('OK',
                        style: TextStyle(
                          color: ColorName.primary,
                        )),
                  )
              ],
            );
          });
}
