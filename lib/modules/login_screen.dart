import 'package:aqarat_app/components/colors.dart';
import 'package:aqarat_app/components/components.dart';
import 'package:aqarat_app/modules/auth/signin_screen.dart';
import 'package:aqarat_app/modules/user_home_view.dart';
import 'package:flutter/material.dart';

import 'auth/register_screen.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(context, title: ''),
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Image.asset(
                'assets/icons/logoSpalsh@2x.png',
                height: 150,
              ),
              const SizedBox(height: 16),

              buildTextHeadLine(text: 'تسجيل'),
              buildTextSubTitle(context,text: 'سجل حسابك وانضم إلينا\n'),

              const SizedBox(height: 30),
              defaultButton(
                  text: 'تسجيل الدخول',
                  onPressed: () {
                    navigateTo(context, SignInScreen());
                  },
                  btnColor: defaultColor),
              const SizedBox(height: 30),
              borderButton(
                onPressed: () {
                  navigateTo(context, RegisterScreen());

                },
                text: 'تسجيل جديد',
                txtColor: defaultColor,
                borderColor: defaultColor,
              ),
              const SizedBox(height: 30),
              defaultButton(
                  text: 'مشاهدة عروض المكاتب',
                  onPressed: () {
                    navigateTo(context, UserHomeViewScreen());
                  },
                  btnColor: secondColor),
            ],
          ),
        ),
      ),
    );
  }
}
