import 'package:aqarat_app/components/colors.dart';
import 'package:aqarat_app/components/components.dart';
import 'package:aqarat_app/modules/auth/confirm_email_screen.dart';
import 'package:aqarat_app/modules/auth/register_screen.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  var phoneController = TextEditingController();

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
                buildTextSubTitle(context,
                    text: 'قم بإدخال رقم الجوال المفعل به حسابك\n'),
                const SizedBox(height: 30),
                defaultFormField1(
                    controller: phoneController,
                    validator: (val) {},
                    preIcon: Image.asset(
                      'assets/icons/saudi@2x.png',
                      height: 20,
                    ),
                    preText: '+966',
                    type: TextInputType.number,
                    label: 'رقم الجوال',
                    hint: 'ادخل رقم جوالك',),
                const SizedBox(height: 30),
                defaultButton(
                    text: 'تأكيد', onPressed: () {
                      navigateTo(context, ConfirmEmailScreen());
                }, btnColor: defaultColor),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
