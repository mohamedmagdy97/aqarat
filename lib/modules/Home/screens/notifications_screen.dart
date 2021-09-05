import 'package:aqarat_app/modules/Home/cubit/cubit.dart';
import 'package:aqarat_app/modules/Home/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/build_notification_card.dart';

class MessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return ListView.builder(
          itemCount: 6,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: BuildNotificationCard(
                title: 'فلل للإيجار',
                time: '15 أكتوبر 2020',
                image: 'assets/images/bdroom.jpg',
                icon3: 'assets/icons/map@2x.png',
                icon2: 'assets/icons/price@2x.png',
                icon1: 'assets/icons/housedesc@2x.png',
                txt3: '24 شارع التخصصي',
                txt2: '250 رس',
                txt1: '4 غرفة نوم - 3 صالة - 2 دورة مياه - 800م',
                txt11: 'نص الاشعار , هذا النص هو مثال للنص',
                txt22: 'نص الاشعار , هذا النص هو مثال للنص',
              ),
            );
          },
        );
      },
    );
  }
}
