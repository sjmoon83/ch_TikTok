import 'package:chtiktok/constants/gaps.dart';
import 'package:chtiktok/constants/sizes.dart';
import 'package:chtiktok/widgets/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(
              FontAwesomeIcons.twitter,
              color: Theme.of(context).primaryColor,
              size: Sizes.size28,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.size40),
        child: Column(
          children: [
            Gaps.v96,
            const Text(
              "See what's happening in the world right now.",
              style: TextStyle(
                  fontSize: Sizes.size28 + Sizes.size2,
                  fontWeight: FontWeight.w700),
            ),
            Gaps.v96,
            AuthButton(
              icon: const FaIcon(
                FontAwesomeIcons.google,
              ),
              text: 'Continue with Google',
              tcolor: Theme.of(context).appBarTheme.foregroundColor!,
              bcolor: Theme.of(context).appBarTheme.backgroundColor!,
            ),
            Gaps.v10,
            AuthButton(
              icon: const FaIcon(
                FontAwesomeIcons.apple,
              ),
              tcolor: Theme.of(context).appBarTheme.foregroundColor!,
              text: 'Continue with Apple',
              bcolor: Theme.of(context).appBarTheme.backgroundColor!,
            ),
            Gaps.v20,
            const Row(
              children: [
                Expanded(child: Divider(thickness: 1.0)),
                Gaps.h10,
                Text(
                  "OR",
                  style: TextStyle(
                    fontSize: Sizes.size14,
                    color: Colors.grey,
                  ),
                ),
                Gaps.h10,
                Expanded(child: Divider(thickness: 1.0)),
              ],
            ),
            Gaps.v10,
            AuthButton(
              tcolor: Theme.of(context).appBarTheme.backgroundColor!,
              text: 'Create account',
              bcolor: Theme.of(context).appBarTheme.foregroundColor!,
            ),
            Gaps.v32,
            Container(
              child: Text.rich(
                TextSpan(
                  text: 'By signing up, you agree to our ',
                  style: const TextStyle(
                    fontSize: Sizes.size16,
                  ),
                  children: [
                    TextSpan(
                      text: 'Terms',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    const TextSpan(text: ', '),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    const TextSpan(text: ', and'),
                    TextSpan(
                      text: ' Cookie Use',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: Sizes.size20, horizontal: Sizes.size40),
          child: Row(
            children: [
              const Text(
                'Have an account already?',
                style: TextStyle(
                  fontSize: Sizes.size16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Gaps.h12,
              Text(
                'Log in',
                style: TextStyle(
                    fontSize: Sizes.size16,
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).primaryColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
