import 'dart:ui';

import 'package:aqarat_app/components/colors.dart';
import 'package:aqarat_app/components/components.dart';
import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var name = TextEditingController();
    var email = TextEditingController();
    var message = TextEditingController();

    return Scaffold(
      appBar: defaultAppBar1(context, title: 'تواصل مع الادارة'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Image.asset(
                'assets/icons/logoSpalsh@2x.png',
                height: 150,
              ),
              const SizedBox(height: 30),
              defaultFormField1(
                controller: name,
                radius: 25.0,
                validator: (val) {},
                type: TextInputType.text,
                hint: 'الاسم',
              ),
              const SizedBox(height: 20),
              defaultFormField1(
                controller: email,
                radius: 25.0,
                validator: (val) {},
                type: TextInputType.text,
                hint: 'البريد',
              ),
              const SizedBox(height: 20),
              defaultFormField(
                controller: message,
                radius: 25.0,
                validator: (val) {},
                type: TextInputType.text,
                hint: 'اكتب رسالتك',
              ),
              const SizedBox(height: 30),
              defaultButton(
                text: 'ارسال',
                onPressed: () {},
                btnColor: defaultColor,
                radius: 25,
              ),
              const SizedBox(height: 16),
              Center(
                  child: Column(
                children: [
                  const Text('\nاو عبر التواصل الاجتماعي'),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: const Text(
                        'هذا النص مثال على النص يمكن ان يستيدل في نفس المساحة لقد تم توليد هذا',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.center,
                      )),
                  const SizedBox(height: 16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/icons/twitter@2x.png',height: 40,),
                      Image.asset('assets/icons/facebook@2x.png',height: 40,),
                      Image.asset('assets/icons/instagram@2x.png',height: 40,),
                      Image.asset('assets/icons/whatsapp@2x.png',height: 35,),

                    ],
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
