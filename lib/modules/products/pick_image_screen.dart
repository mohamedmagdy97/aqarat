import 'package:aqarat_app/components/colors.dart';
import 'package:aqarat_app/components/components.dart';
import 'package:aqarat_app/modules/Home/cubit/cubit.dart';
import 'package:aqarat_app/modules/Home/cubit/states.dart';
import 'package:aqarat_app/modules/products/price_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PickImageScreen extends StatefulWidget {
  @override
  _PickImageScreenState createState() => _PickImageScreenState();
}

class _PickImageScreenState extends State<PickImageScreen> {
  bool showPics = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          appBar: defaultAppBar1(
            context,
            title: 'تحميل الصور',
          ),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: 200,
                    height: 150,
                    child: InkWell(
                      onTap: () {
                        cubit.chooseImage();
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        elevation: 5,
                        child: cubit.imageFile == null
                            ? Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.camera_alt_outlined,
                                      size: 50,
                                    ),
                                    Text(
                                      'إضافة صور',
                                      style: TextStyle(fontSize: 22),
                                    )
                                  ],
                                ),
                              )
                            : ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.file(
                                  cubit.imageFile!,
                                  fit: BoxFit.cover,
                                )),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        // width: MediaQuery.of(context).size.width * 0.8,
                        child: const Text(
                          'عرض الصور للمشاهدين',
                        ),
                      ),
                      Checkbox(
                        value: showPics,
                        onChanged: (val) {
                          setState(() {
                            showPics = val!;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(16.0),
            child: defaultButton(
                text: 'استمرار',
                onPressed: () {
                  navigateTo(context, PriceScreen());
                },
                btnColor: defaultColor,
                radius: 0.0),
          ),
        );
      },
    );
  }
}
