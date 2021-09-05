import 'package:aqarat_app/components/colors.dart';
import 'package:aqarat_app/components/components.dart';
import 'package:aqarat_app/modules/login_screen.dart';
import 'package:flutter/material.dart';

class ChooseLanguageScreen extends StatelessWidget {
  const ChooseLanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
                top: 50.0, right: 16, left: 16, bottom: 16),
            child: Column(
              children: [
                Image.asset(
                  'assets/icons/logoSpalsh@2x.png',
                  height: 150,
                ),
                const SizedBox(height: 30),
                Text(
                  'اللغة',
                  style: TextStyle(
                    fontSize: 24,
                    color: defaultColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'قم باختيار اللغة\n',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),
                defaultButton(
                    text: 'العربية',
                    onPressed: () {
                      navigateTo(context, LoginScreen());
                    },
                    btnColor: defaultColor),
                const SizedBox(height: 30),
                borderButton(
                  onPressed: () {},
                  text: 'English',
                  txtColor: defaultColor,
                  borderColor: defaultColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
