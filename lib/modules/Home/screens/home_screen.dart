import 'package:aqarat_app/components/colors.dart';
import 'package:aqarat_app/components/components.dart';
import 'package:aqarat_app/modules/Home/cubit/cubit.dart';
import 'package:aqarat_app/modules/Home/cubit/states.dart';
import 'package:aqarat_app/modules/Home/screens/widgets/build_home_card.dart';
import 'package:aqarat_app/modules/products/add_product_category.dart';
import 'package:aqarat_app/modules/products/room_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var countryChoice;
  var countryOffer;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Column(
          children: [
            Container(
              height: 50,
              color: bgColor.withOpacity(0.9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                      backgroundColor: defaultColor,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search),
                      )),
                  Container(
                      height: 40,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      // width: MediaQuery.of(context).size.width*.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: DropdownButton<String>(
                          hint: Container(
                              width: MediaQuery.of(context).size.width * 0.28,
                              child: Text('نوع العرض')),
                          onChanged: (String? changedValue) {
                            setState(() {
                              countryOffer = changedValue;
                            });
                          },
                          value: countryOffer,
                          underline: Text(''),
                          items: <String>[
                            'حالي',
                            'جاري',
                          ].map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value),
                            );
                          }).toList(),),),
                  Container(
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    // width: MediaQuery.of(context).size.width*.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: DropdownButton<String>(
                      hint: Container(
                          width: MediaQuery.of(context).size.width * 0.28,
                          child: Text('المدينة')),
                      onChanged: (String? changedValue) {
                        setState(() {
                          countryChoice = changedValue;
                        });
                      },
                      value: countryChoice,
                      underline: Text(''),
                      items: <String>[
                        'القاهرة',
                        'المنصورة',
                      ].map((String value) {
                        return new DropdownMenuItem<String>(
                          value: value,
                          child: new Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              color: Colors.grey[100],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  defaultButton(
                    text: 'اضافه طلب',
                    onPressed: () {
                      navigateTo(
                          context,
                          AddProductCategory(
                            id: 0,
                          ));
                    },
                    width: MediaQuery.of(context).size.width * 0.35,
                    radius: 25,
                    height: 40.0,
                    fontSize: 20.0,
                    btnColor: defaultColor,
                  ),
                  defaultButton(
                    text: 'اضافه اعلان',
                    onPressed: () {
                      navigateTo(
                          context,
                          AddProductCategory(
                            id: 1,
                          ));
                    },
                    width: MediaQuery.of(context).size.width * 0.35,
                    radius: 25,
                    fontSize: 20.0,
                    height: 40.0,
                    btnColor: defaultColor,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (context, index) => BuildHomeCard(
                    onTap: () {
                      navigateTo(context, RoomDetails());
                    },
                    title: 'فلل للإيجار',
                    image: 'assets/images/bdroom.jpg',
                    icon1: 'assets/icons/map@2x.png',
                    icon2: 'assets/icons/price@2x.png',
                    icon3: 'assets/icons/calendar@2x.png',
                    icon4: 'assets/icons/housedesc@2x.png',
                    txt1: '24 شارع التخصصي',
                    txt2: '250 رس',
                    txt3: '20/7/2021',
                    txt4: '4 غرفة نوم - 3 صالة - 2 دورة مياه - 800م',
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
