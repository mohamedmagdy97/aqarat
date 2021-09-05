import 'package:aqarat_app/components/colors.dart';
import 'package:aqarat_app/components/components.dart';
import 'package:aqarat_app/components/constants.dart';
import 'package:aqarat_app/modules/Home/cubit/cubit.dart';
import 'package:aqarat_app/modules/Home/cubit/states.dart';
import 'package:aqarat_app/modules/Home/screens/widgets/build_home_card.dart';
import 'package:aqarat_app/modules/product_user_view.dart';
import 'package:aqarat_app/modules/products/add_product_category.dart';
import 'package:aqarat_app/modules/products/room_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserHomeViewScreen extends StatefulWidget {
  @override
  _UserHomeViewScreenState createState() => _UserHomeViewScreenState();
}

class _UserHomeViewScreenState extends State<UserHomeViewScreen> {
  var countryChoice;
  var countryOffer;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: Image.asset('assets/icons/logoHome@2x.png',height: 70,),
            centerTitle: true,
            toolbarHeight: 70,
            backgroundColor: defaultColor,
          ),
          body: Column(
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
                            }).toList())),
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

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: 6,
                    itemBuilder: (context, index) => BuildHomeCard(
                      onTap: () {
                        navigateTo(context, ProductUserView());
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
          ),
        );
      },
    );
  }
}
