import 'package:aqarat_app/components/colors.dart';
import 'package:aqarat_app/components/components.dart';
import 'package:aqarat_app/modules/Home/home_layout.dart';
import 'package:aqarat_app/modules/auth/forget_password_screen.dart';
import 'package:aqarat_app/modules/auth/register_screen.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  var emailController = TextEditingController();
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
                buildTextHeadLine(text: 'أهلا بك وبعودتك'),
                buildTextSubTitle(context, text: 'باشر بالدخول لحسابك لدينا\n'),
                const SizedBox(height: 30),
                defaultFormField1(
                  controller: emailController,
                  validator: (val) {},
                  type: TextInputType.emailAddress,
                  label: 'البريد الالكتروني',
                ),
                const SizedBox(height: 16),
                defaultFormField1(
                    controller: passwordController,
                    validator: (val) {},
                    isPassword: true,
                    type: TextInputType.visiblePassword,
                    sufIcon: Icon(Icons.remove_red_eye),
                    label: 'كلمة المرور'),
                TextButton(
                    onPressed: () {
                      navigateTo(context, ForgetPasswordScreen());
                    },
                    child: const Text(
                      'هل نسيت كلمة المرور؟',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    )),
                const SizedBox(height: 30),
                defaultButton(
                    text: 'إستمرار', onPressed: () {
                      navigateTo(context, HomeLayout());
                }, btnColor: defaultColor),
                const SizedBox(height: 30),
                Row(children: <Widget>[
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                        child: Divider(
                          color: Colors.black,
                          height: 36,
                        )),
                  ),
                  Text(
                    'ليس لديك حساب ؟',
                    style: TextTheme().bodyText2,
                  ),
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                        child: Divider(
                          color: Colors.black,
                          height: 36,
                        )),
                  ),
                ]),
                const SizedBox(height: 10),
                borderButton(
                  onPressed: () {
                    navigateTo(context, RegisterScreen());
                  },
                  text: 'تسجيل جديد',
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
