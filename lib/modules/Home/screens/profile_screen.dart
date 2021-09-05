import 'package:aqarat_app/components/components.dart';
import 'package:aqarat_app/modules/Home/cubit/cubit.dart';
import 'package:aqarat_app/modules/Home/cubit/states.dart';
import 'package:aqarat_app/modules/Home/screens/widgets/build_profile_card.dart';
import 'package:aqarat_app/modules/profile_pages/about_screen.dart';
import 'package:aqarat_app/modules/profile_pages/contact_us_screen.dart';
import 'package:aqarat_app/modules/profile_pages/language_screen.dart';
import 'package:aqarat_app/modules/profile_pages/my_adv_screen.dart';
import 'package:aqarat_app/modules/profile_pages/personal_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Directionality(
          textDirection: TextDirection.rtl,
          child: GridView.count(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              childAspectRatio: 1.15,
              padding: EdgeInsets.all(8),
              children: [
                BuildProfileCard(
                    onTap: () {
                      navigateTo(context, PersonalProfileScreen());
                    },
                    name: 'الملف الشخصي',
                    image: 'assets/icons/profile@2x.png'),
                BuildProfileCard(
                    onTap: () {
                      navigateTo(context, MyAdvScreen());
                    },
                    name: 'إعلاناتي',
                    image: 'assets/icons/mayadv@2x.png'),
                BuildProfileCard(
                    onTap: () {
                      navigateTo(context, LanguageScreen());
                    },
                    name: 'لغة التطبيق',
                    image: 'assets/icons/language@2x.png'),
                BuildProfileCard(
                    onTap: () {
                      navigateTo(context, ContactUsScreen());
                    },
                    name: 'تواصل مع الادارة',
                    image: 'assets/icons/contact@2x.png'),
                BuildProfileCard(
                    onTap: () {
                      navigateTo(context, AboutScreen());
                    },
                    name: 'عن التطبيق',
                    image: 'assets/icons/about@2x.png'),
              ]),
        );
      },
    );
  }
}
