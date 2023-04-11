import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/core/presentation/common_styles/text_style.dart';
import 'package:lettutor/core/presentation/common_widgets/common_widgets.dart';
import 'package:lettutor/core/presentation/common_widgets/constant.dart';
import 'package:lettutor/shared/auth_providers.dart';

import '../../core/presentation/common_validators.dart';

class ForgotPasswordScreen extends HookConsumerWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final txtEmail = useTextEditingController();
    final reseted = useState(false);
    return DismissKeyboardScaffold(
      isLogin: true,
      appBar: const CommonAppBar(
        isLogin: true,
      ),
      body: Padding(
        padding: paddingLayout,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Reset Password',
              style: CommonTextStyle.title,
            ),
            const SizedBox(
              height: 10,
            ),
            reseted.value
                ? const Text(
                    'Check your inbox for a link to reset your password',
                    style: CommonTextStyle.partContent,
                  )
                : Column(children: [
                    const Text(
                      'Please enter your email address to search for your account.',
                      style: CommonTextStyle.partContent,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TitleWithChild(
                        title: 'Email',
                        child: CommonTextFormField(
                          controller: txtEmail,
                          validator: CommonValidators.emailValidator,
                        )),
                    ElevatedButton(
                      onPressed: () async {
                        final res = await ref.read(authRepository).forgotPassword(txtEmail.text);
                        res.fold((l) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(content: Text('Bad request')));
                        }, (r) => reseted.value = true);
                      },
                      child: const Text(
                        'Send reset link',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ])
          ],
        ),
      ),
    );
  }
}
