import 'package:aqarat_app/components/components.dart';
import 'package:aqarat_app/modules/Home/cubit/cubit.dart';
import 'package:aqarat_app/modules/Home/cubit/states.dart';
import 'package:aqarat_app/modules/Home/screens/widgets/build_messages_card.dart';
import 'package:aqarat_app/modules/products/room_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: 6,
          itemBuilder: (context, index) {
            return BuildMessagesCard(
              onTap: (){
                navigateTo(context, RoomDetails());
              },
              name: 'اسم المستخدم',
              time: 'منذ 3 دقائق',
              txt1:
                  'نص الرسالة, هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة',
              txt2: 'رقم الاعلان: ',
              txt3: '54625262',
            );
          },
        );
      },
    );
  }
}
