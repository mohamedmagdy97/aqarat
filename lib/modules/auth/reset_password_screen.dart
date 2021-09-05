import 'package:aqarat_app/components/colors.dart';
import 'package:aqarat_app/components/components.dart';
import 'package:aqarat_app/modules/auth/register_screen.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  var newPassController = TextEditingController();
  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

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
                buildTextHeadLine(text: 'إستعادة كلمة المرور'),
                buildTextSubTitle(context, text: 'قم بإدخال كلمة المرور الجديدة\n'),
                const SizedBox(height: 30),
                defaultFormField1(
                  controller: newPassController,
                  validator: (val) {},
                  isPassword: true,
                  type: TextInputType.visiblePassword,
                  sufIcon: Icon(Icons.remove_red_eye),
                  label: 'كلمة المرور الجديدة',
                ),
                const SizedBox(height: 16),
                defaultFormField1(
                    controller: passwordController,
                    validator: (val) {},
                    isPassword: true,
                    type: TextInputType.visiblePassword,
                    sufIcon: Icon(Icons.remove_red_eye),
                    label: 'تأكيد كلمة المرور'),

                const SizedBox(height: 30),
                defaultButton(
                    text: 'تأكيد', onPressed: () {}, btnColor: defaultColor),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
