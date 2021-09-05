import 'package:aqarat_app/components/colors.dart';
import 'package:aqarat_app/components/components.dart';
import 'package:aqarat_app/modules/auth/register_screen.dart';
import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatelessWidget {
  var oldPassController = TextEditingController();
  var newPassController = TextEditingController();
  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar1(context, title: 'تغير كلمة المرور'),
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: formKey,
            child: Column(
              children: [


                const SizedBox(height: 30),
                defaultFormField1(
                  controller: oldPassController,
                  validator: (val) {},
                  isPassword: true,
                  type: TextInputType.visiblePassword,
                  sufIcon: Icon(Icons.remove_red_eye),
                  label: 'كلمة المرور القديمة',
                ),

                const SizedBox(height: 16),
                defaultFormField1(
                  controller: newPassController,
                  validator: (val) {},
                  isPassword: true,
                  type: TextInputType.visiblePassword,
                  sufIcon: Icon(Icons.remove_red_eye),
                  label: 'كلمة المرور الجديدة',
                ),                const SizedBox(height: 16),

                defaultFormField1(
                    controller: passwordController,
                    validator: (val) {},
                    isPassword: true,
                    type: TextInputType.visiblePassword,
                    sufIcon: Icon(Icons.remove_red_eye),
                    label: 'تأكيد كلمة المرور'),

                const SizedBox(height: 30),
                defaultButton(
                    text: 'حفظ التعديلات', onPressed: () {}, btnColor: defaultColor),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
