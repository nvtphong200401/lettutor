import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lettutor/gen/colors.gen.dart';

class CommonDialog {
  CommonDialog(this.context);
  BuildContext context;
  Future infoDialog({required String title, required String body}) => showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.info_outline,
                size: 50,
                color: ColorName.grey,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(body),
            ],
          ),
          actions: [
            TextButton(
              style: const ButtonStyle(overlayColor: MaterialStatePropertyAll(ColorName.activeTag)),
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
