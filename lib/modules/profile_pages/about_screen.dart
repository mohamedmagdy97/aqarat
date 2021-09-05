import 'package:aqarat_app/components/colors.dart';
import 'package:aqarat_app/components/components.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar1(context, title: 'عن التطبيق'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [              const SizedBox(height: 20),

              Image.asset(
                'assets/icons/logoSpalsh@2x.png',
                height: 150,
              ),
              const SizedBox(height: 20),
              Container(
                color: defaultColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'رقم الحساب البنكي',
                      style: TextStyle(color: bgColor, fontSize: 20),
                    ),
                    const Text(
                      '228846564878568',
                      style: TextStyle(color: bgColor, fontSize: 22),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Text(
                      'هذا النث شسيبشسب شس خهت تشث قهنىؤيسن هث ب بتصه ص  صهبخهص ه بهص صه ثهتب سشكبقهنىؤيسن هث ب بتصه ص  صهبخهص ه بهص صه ثهتب سشكبقهنىؤيسن هث ب بتصه ص  صهبخهص ه بهص صه ثهتب سشكبقهنىؤيسن هث ب بتصه ص  صهبخهص ه بهص صه ثهتب سشكبقهنىؤيسن هث ب بتصه ص  صهبخهص ه بهص صه ثهتب سشكبقهنىؤيسن هث ب بتصه ص  صهبخهص ه بهص صه ثهتب سشكبقهنىؤيسن هث ب بتصه ص  صهبخهص ه بهص صهب بتصه ص  صهبخهص ه بهص صهب بتصه ص  صهبخهص ه بهص صهب بتصه ص  صهبخهص ه بهص صهب بتصه ص  صهبخهص ه بهص صهب بتصه ص  صهبخهص ه بهص صهب بتصه ص  صهبخهص ه بهص صهب بتصه ص  صهبخهص ه بهص صه ثهتب سشكب'))
            ],
          ),
        ),
      ),
    );
  }
}
