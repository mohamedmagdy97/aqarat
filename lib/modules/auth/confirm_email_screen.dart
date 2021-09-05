import 'dart:async';

import 'package:aqarat_app/components/colors.dart';
import 'package:aqarat_app/components/components.dart';
import 'package:aqarat_app/modules/auth/reset_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ConfirmEmailScreen extends StatefulWidget {
  @override
  _ConfirmEmailScreenState createState() => _ConfirmEmailScreenState();
}

class _ConfirmEmailScreenState extends State<ConfirmEmailScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  String? currentText;

  StreamController<ErrorAnimationType>? errorController;

  var textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(context, title: ''),
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Image.asset(
                  'assets/icons/logoSpalsh@2x.png',
                  height: 150,
                ),
                const SizedBox(height: 16),
                buildTextHeadLine(text: 'تفعيل البريد الالكتروني'),
                buildTextSubTitle(context,
                    text: 'سوف يتم ارسال كود التحقق الخاص بك\n'),
                PinCodeTextField(
                  length: 4,
                  obscureText: false,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                  ),
                  animationDuration: Duration(milliseconds: 300),
                  // enableActiveFill: true,
                  appContext: context,
                  errorAnimationController: errorController,
                  controller: textEditingController,
                  onCompleted: (v) {
                    print("Completed");
                  },
                  onChanged: (value) {
                    print(value);
                    setState(() {
                      currentText = value;
                    });
                  },
                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");
                    return true;
                  },
                ),
                const SizedBox(height: 30),
                defaultButton(
                    text: 'إستمرار',
                    onPressed: () {
                      navigateTo(context, ResetPasswordScreen());
                    },
                    btnColor: defaultColor),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'إرسال الكود',
                        style: TextStyle(
                          color: defaultColor,
                          fontSize: 18,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    Text('لم استلم الرسالة ؟'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
