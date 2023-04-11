import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/core/presentation/common_styles/common_styles.dart';
import 'package:lettutor/core/presentation/common_widgets/common_dialog.dart';
import 'package:lettutor/core/presentation/common_widgets/common_widgets.dart';
import 'package:lettutor/core/presentation/common_widgets/constant.dart';
import 'package:lettutor/gen/assets.gen.dart';
import 'package:lettutor/gen/colors.gen.dart';
import 'package:lettutor/shared/auth_providers.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final txtEmail = useTextEditingController();
    final txtPassword = useTextEditingController();

    return DismissKeyboardScaffold(
      isLogin: true,
      appBar: const CommonAppBar(
        isLogin: true,
      ),
      body: ListView(
        padding: paddingLayout,
        children: [
          Assets.images.loginBanner.image(),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Say hello to your English tutors',
            style: TextStyle(
              color: ColorName.primary,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Become fluent faster through one on one video chat lessons tailored to your goals.',
              style:
                  TextStyle(color: ColorName.formDesc, fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          CommonInputField(
            title: 'Email',
            hintText: 'mail@example.com',
            controller: txtEmail,
          ),
          CommonInputField(
            title: 'Password',
            hintText: 'Password',
            obscureText: true,
            controller: txtPassword,
          ),
          Consumer(
            builder: (context, ref, child) {
              final state = ref.watch(authNotifierProvider);
              return state.maybeWhen(
                unAuthenticated: (message) {
                  if (message != null) return child!;
                  return const SizedBox.shrink();
                },
                orElse: () => const SizedBox.shrink(),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.red.shade50,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Colors.red.shade300,
                  )),
              child: Row(
                children: const [
                  Icon(
                    Icons.cancel,
                    size: 20,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Incorrect email or password',
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(color: ColorName.primary, fontWeight: FontWeight.bold),
                )),
          ),
          ElevatedButton(
            onPressed: () async {
              CommonDialog(context).loadingDialog();
              await ref.read(authNotifierProvider.notifier).login(txtEmail.text, txtPassword.text);
              await Future(() {
                if (context.mounted) {
                  context.router.root.pop();
                }
              });
            },
            style: CommonButtonStyle.primaryButtonStyle,
            child: const Text('LOGIN', style: TextStyle(color: ColorName.background)),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 24),
              child: Text(
                'Or continue with',
                style: TextStyle(color: ColorName.textColor),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Assets.images.facebookLogo.svg(width: 40, height: 40),
              Assets.images.googleLogo.svg(width: 40, height: 40),
              Container(
                  width: 40,
                  height: 40,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorName.primary,
                      ),
                      borderRadius: BorderRadius.circular(100)),
                  child: Assets.images.mobileLogo.svg()),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Not a member yet? ',
                style: TextStyle(color: ColorName.textColor, fontSize: 14),
              ),
              GestureDetector(
                child: const Text(
                  'Sign up',
                  style: TextStyle(color: ColorName.primary, fontSize: 14),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
