import 'package:aqarat_app/components/colors.dart';
import 'package:aqarat_app/components/components.dart';
import 'package:aqarat_app/modules/auth/change_password_screen.dart';
import 'package:flutter/material.dart';

class PersonalProfileScreen extends StatefulWidget {
  @override
  _PersonalProfileScreenState createState() => _PersonalProfileScreenState();
}

class _PersonalProfileScreenState extends State<PersonalProfileScreen> {
  var name = TextEditingController();

  var email = TextEditingController();
  var phone = TextEditingController();
  var company = TextEditingController();
  var country = TextEditingController();
  var profileImage = TextEditingController();
  var fileImage = TextEditingController();


  var enable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar1(context, title: 'الملف الشخصي'),
      backgroundColor: bgColor,
      body: ListView(
        children: [
          const SizedBox(height: 20),
          Center(
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 75,
                  backgroundColor: Colors.grey[200],
                  child: Image.asset(
                    'assets/icons/accountNav@2x.png',
                    height: 75,
                  ),
                ),
                Positioned(
                    top: 0,
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: defaultColor,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.edit,
                          size: 20,
                        ),
                      ),
                      radius: 25,
                    ))
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('الاسم'),
                defaultFormField1(
                  controller: name,
                  validator: (val) {},
                  type: TextInputType.text,
                  radius: 0.0,
                  hint: 'الاسم',
                  enabled: enable,
                  sufIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        enable = !enable;
                        print(enable);
                      });
                    },
                    icon: Icon(Icons.edit),
                  ),
                ),
                const SizedBox(height: 20),
                Text('البريد الالكتروني'),
                defaultFormField1(
                  controller: email,
                  validator: (val) {},
                  type: TextInputType.text,
                  radius: 0.0,
                  hint: 'البريد الالكتروني',
                  enabled: enable,
                  sufIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        enable = !enable;
                        print(enable);
                      });
                    },
                    icon: Icon(Icons.edit),
                  ),
                ),
                const SizedBox(height: 20),
                Text('رقم الجوال'),
                defaultFormField1(
                  controller: phone,
                  validator: (val) {},
                  type: TextInputType.text,
                  radius: 0.0,
                  hint: 'رقم الجوال',
                  enabled: enable,
                  sufIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        enable = !enable;
                        print(enable);
                      });
                    },
                    icon: Icon(Icons.edit),
                  ),
                ),
                const SizedBox(height: 20),
                Text('اسم المؤسسة أو الشركة'),
                defaultFormField1(
                  controller: company,
                  validator: (val) {},
                  type: TextInputType.text,
                  radius: 0.0,
                  hint: 'اسم المؤسسة أو الشركة',
                  enabled: enable,
                  sufIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        enable = !enable;
                        print(enable);
                      });
                    },
                    icon: Icon(Icons.edit),
                  ),
                ),
                const SizedBox(height: 20),
                Text('المدن'),
                defaultFormField1(
                  controller: country,
                  validator: (val) {},
                  type: TextInputType.text,
                  radius: 0.0,
                  hint: 'المدن',
                  enabled: enable,
                  sufIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        enable = !enable;
                        print(enable);
                      });
                    },
                    icon: Icon(Icons.edit),
                  ),
                ),
                const SizedBox(height: 20),
                Text('صورة الهوية'),
                defaultFormField1(
                  controller: profileImage,
                  validator: (val) {},
                  type: TextInputType.text,
                  radius: 0.0,
                  hint: 'صورة الهوية',
                  enabled: enable,
                  sufIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        enable = !enable;
                        print(enable);
                      });
                    },
                    icon: Icon(Icons.edit),
                  ),
                ),
                const SizedBox(height: 20),
                Text('صورة السجل التجاري'),
                defaultFormField1(
                  controller: fileImage,
                  validator: (val) {},
                  type: TextInputType.text,
                  radius: 0.0,
                  hint: 'صورة السجل التجاري',
                  enabled: enable,
                  sufIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        enable = !enable;
                        print(enable);
                      });
                    },
                    icon: Icon(Icons.edit),
                  ),
                ),
                const SizedBox(height: 20),
                borderButton(
                  onPressed: () {
                    navigateTo(context, ChangePasswordScreen());
                  },
                  text: 'تغير كلمة المرور',
                  borderColor: defaultColor,
                  txtColor: defaultColor,
                  radius: 0.0,
                ),
                const SizedBox(height: 20),
                defaultButton(
                    text: 'حفظ التعديلات',
                    onPressed: () {},
                    btnColor: defaultColor,
                    radius: 0.0),
                const SizedBox(height: 20),
              ],
            ),
          )
        ],
      ),
    );
  }
}
