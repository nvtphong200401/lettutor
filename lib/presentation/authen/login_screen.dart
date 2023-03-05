import 'package:flutter/material.dart';
import 'package:lettutor/core/presentation/common_widgets/common_widgets.dart';
import 'package:lettutor/core/presentation/common_widgets/constant.dart';
import 'package:lettutor/gen/assets.gen.dart';
import 'package:lettutor/gen/colors.gen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DismissKeyboardScaffold(
      appBar: const CommonAppBar(),
      body: ListView(
        padding: paddingLayout,
        children: [
          Assets.images.loginBanner.image(),
          const Text(
            'Say hello to your English tutors',
            style: TextStyle(
              color: ColorName.primary,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'Become fluent faster through one on one video chat lessons tailored to your goals.',
              style: TextStyle(
                  color: ColorName.formDesc,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const CommonInputField(
            title: 'Email',
            hintText: 'mail@example.com',
          ),
          const CommonInputField(
            title: 'Password',
            obscureText: true,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                      color: ColorName.primary, fontWeight: FontWeight.bold),
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          const CommonPrimaryButton(
            child: Text('LOGIN', style: TextStyle(color: ColorName.background)),
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
