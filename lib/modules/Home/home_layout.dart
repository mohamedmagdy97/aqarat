import 'package:aqarat_app/components/colors.dart';
import 'package:aqarat_app/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';

class HomeLayout extends StatelessWidget {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();

  var titleController = TextEditingController();
  var timeController = TextEditingController();
  var dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (BuildContext context, AppStates state) {},
      builder: (BuildContext context, AppStates state) {
        AppCubit cubit = AppCubit.get(context);
        return homeLayoutBuilder(
          context,
          cubit,
        );
      },
    );
  }

  Scaffold homeLayoutBuilder(BuildContext context, AppCubit cubit) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: const SizedBox(),
        centerTitle: true,
        backgroundColor: defaultColor,
        title: Text(cubit.title[cubit.currentIndex]),
      ),
      backgroundColor: bgColor,
      body: Center(child: cubit.screens[cubit.currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          cubit.changeIndex(index);
        },
        currentIndex: cubit.currentIndex,
        selectedItemColor: defaultColor,
        showSelectedLabels: true,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              'assets/icons/accountNav@2x.png',
              height: 25,
            ),
            icon: Icon(
              Icons.perm_identity_rounded,
              color: Colors.grey,
              size: 25,
            ),
            label: 'حسابي',
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              'assets/icons/notificationNav@2x.png',
              height: 25,
            ),
            icon: Icon(
              Icons.notifications,
              color: Colors.grey,
              size: 25,
            ),
            label: 'الاشعارات',
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              'assets/icons/messagesNav@2x.png',
              height: 25,
            ),
            icon: Icon(
              Icons.email_outlined,
              color: Colors.grey,
              size: 25,
            ),
            label: 'الرسائل',
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              'assets/icons/homeNav@2x.png',
              height: 25,
            ),
            icon: Icon(
              Icons.home,
              color: Colors.grey,
              size: 25,
            ),
            label: 'الرئيسية',
          ), //flutter@2023
        ],
      ),
    );
  }
}
