import 'dart:io';

import 'package:aqarat_app/modules/Home/cubit/states.dart';
import 'package:aqarat_app/modules/Home/screens/home_screen.dart';
import 'package:aqarat_app/modules/Home/screens/messages_screen.dart';
import 'package:aqarat_app/modules/Home/screens/notifications_screen.dart';
import 'package:aqarat_app/modules/Home/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 3;
  List<String> title = ['ملفي', 'الاشعارات', 'الرسائل', 'الرئيسية'];
  List<Widget> screens = [
    ProfileScreen(),
    MessagesScreen(),
    NotificationsScreen(),
    HomeScreen(),
  ];

  void changeIndex(int index) {
    currentIndex = index;
    emit(AppChangeBottomNavBarState());
  }

  File? imageFile;
  String? fileName;

  chooseImage() async {

    final getImage = await ImagePicker().getImage(source: ImageSource.gallery);
    if (getImage != null) {
      imageFile = File(getImage.path);
      fileName = imageFile!.path.split('/').last;
      emit(ChooseImageSuccessState());
    } else {
      print('No Image Selected ...');
      emit(ChooseImageErrorState());
    }
  }

  File? imageFile2;
  String? fileName2;

  chooseImage2() async {

    final getImage = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (getImage != null) {
      imageFile2 = File(getImage.path);
      fileName2 = imageFile2!.path.split('/').last;
      emit(ChooseImageSuccessState());
    } else {
      print('No Image Selected ...');
      emit(ChooseImageErrorState());
    }
  }

}
