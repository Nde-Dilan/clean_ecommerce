import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nerala_app/common/widgets/buttons/basic_app_button.dart';
import 'package:nerala_app/core/configs/constants.dart';
import 'package:nerala_app/core/configs/theme/app_colors.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 28.0, vertical: mediaWidth(context) / 2.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _signInText(),
            SizedBox(
              height: mediaWidth(context) / 6.5,
            ),
            _emailField(context),
            SizedBox(
              height: mediaWidth(context) / 4.5,
            ),
            _continueButton(),
            SizedBox(
              height: mediaWidth(context) / 7.5,
            ),
            _createAccountText(context),
          ],
        ),
      ),
    );
  }

  Widget _signInText() {
    return Text(
      'Sign In',
      style: AppTextStyles.h1.copyWith(color: AppColors.white),
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: "Enter Email",
          hintStyle: AppTextStyles.h3.copyWith(color: AppColors.white)),
    );
  }

  Widget _continueButton() {
    return BasicAppButton(
      onPressed: () {
        
      },
      title: "Continue",
    );
  }

  Widget _createAccountText(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
        text: "Don't have an account? ",
        style: AppTextStyles.h4.copyWith(color: AppColors.white),
      ),
      TextSpan(
        recognizer: TapGestureRecognizer()..onTap = () {
          Navigator.pushNamed(context, '/signUp');
        },
        text: "Create One",
        style: AppTextStyles.h4.copyWith(color: AppColors.white,fontWeight: FontWeight.bold),
      )
    ]));
  }
}
