import 'dart:async';

import 'package:aqarat_app/components/colors.dart';
import 'package:aqarat_app/modules/Home/home_layout.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatefulWidget {
  @override
  _SuccessScreenState createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 2),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => HomeLayout())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: defaultColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/success@2x.png',
                height: 200,
              ),
              const SizedBox(height: 10),
              const Text(
                'تم إضافة اعلانك بنجاح',
                style: TextStyle(color: Colors.white, fontSize: 26),
              )
            ],
          ),
        ),
      ),
    );
  }
}
