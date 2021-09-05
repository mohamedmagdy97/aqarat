import 'package:aqarat_app/components/colors.dart';
import 'package:aqarat_app/components/components.dart';
import 'package:aqarat_app/modules/Home/cubit/cubit.dart';
import 'package:aqarat_app/modules/Home/cubit/states.dart';
import 'package:aqarat_app/modules/auth/confirm_email_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var nameController = TextEditingController();

  var emailController = TextEditingController();

  var phoneController = TextEditingController();

  var passwordController = TextEditingController();

  var coPasswordController = TextEditingController();
  var imageController = TextEditingController();
  var image1Controller = TextEditingController();



  var formKey = GlobalKey<FormState>();

  bool checkValue = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state){},
      builder:(context,state){
        var cubit=AppCubit.get(context);
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
                    height: 120,
                  ),
                  const SizedBox(height: 16),
                  buildTextHeadLine(text: 'تسجيل جديد'),
                  buildTextSubTitle(context,text: 'سجل حسابك وانضم إلينا\n'),
                  const SizedBox(height: 30),
                  defaultFormField1(
                      controller: nameController,
                      validator: (val) {},
                      type: TextInputType.text,
                      label: 'الاسم'),
                  const SizedBox(height: 16),
                  defaultFormField1(
                      controller: emailController,
                      validator: (val) {},
                      type: TextInputType.emailAddress,
                      label: 'البريد الالكتروني'),
                  const SizedBox(height: 16),
                  defaultFormField1(
                      controller: phoneController,
                      validator: (val) {},
                      type: TextInputType.number,
                      label: 'رقم الجوال'),
                  const SizedBox(height: 16),
                  defaultFormField1(
                      controller: imageController,
                      validator: (val) {},
                      type: TextInputType.text,
                      onTap: (){

                        setState(() {
                          cubit.chooseImage();
                          imageController.text = cubit.fileName.toString();
                        });
                      },
                      sufIcon: Icon(Icons.upload_sharp),
                      label: 'صورة هوية المتصل'),
                  const SizedBox(height: 16),
                  defaultFormField1(
                      controller: image1Controller,
                      validator: (val) {},
                      onTap: (){
                        setState(() {
                          cubit.chooseImage2();
                          image1Controller.text = cubit.fileName2.toString();
                        });
                      },
                      type: TextInputType.text,
                      sufIcon: Icon(Icons.upload_sharp),
                      label: 'صورة السجل التجاري'),
                  const SizedBox(height: 16),
                  defaultFormField1(
                      controller: nameController,
                      validator: (val) {},
                      type: TextInputType.text,
                      label: 'اسم المؤسسة / الشركة'),
                  const SizedBox(height: 16),
                  defaultFormField1(
                      controller: nameController,
                      validator: (val) {},
                      type: TextInputType.text,
                      sufIcon: Icon(Icons.keyboard_arrow_down),
                      label: 'المدن'),
                  const SizedBox(height: 16),
                  defaultFormField1(
                      controller: passwordController,
                      validator: (val) {},
                      isPassword: true,
                      type: TextInputType.visiblePassword,
                      sufIcon: Icon(Icons.remove_red_eye),
                      label: 'كلمة المرور'),
                  const SizedBox(height: 16),
                  defaultFormField1(
                      controller: coPasswordController,
                      validator: (val) {},
                      isPassword: true,
                      type: TextInputType.visiblePassword,
                      sufIcon: Icon(Icons.remove_red_eye),
                      label: 'تأكيد كلمة المرور'),
                  const SizedBox(height: 30),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Row(
                      children: [
                        Checkbox(
                          value: checkValue,
                          onChanged: (val) {
                            setState(() {
                              checkValue = val!;
                            });
                          },
                        ),
                        Text('قرأت ووافقت على'),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'الشروط والاحكام',
                            style: TextStyle(
                              color: defaultColor,
                              fontSize: 18,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  defaultButton(
                      text: 'إستمرار', onPressed: () {
                        navigateTo(context, ConfirmEmailScreen());
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
                      ' لديك حساب بالفعل ؟',
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
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'تسجيل دخول',
                      style: TextStyle(
                        color: defaultColor,
                        fontSize: 22,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
      },
    );
  }
}
