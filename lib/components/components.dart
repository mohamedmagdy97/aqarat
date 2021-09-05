import '../components/colors.dart';
import '../components/constants.dart';
import 'package:flutter/material.dart';

Widget defaultFormField({
  required TextEditingController controller,
  required FormFieldValidator<String> validator,
  VoidCallback? onTap,
  required TextInputType type,
  ValueChanged<String>? onSubmit,
  ValueChanged<String>? onChange,
  required String hint,
  bool enabled = true,
  bool isPassword = false,
  String? suffixText,
  var radius = 10.0,
}) =>
    TextFormField(
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      onTap: onTap,
      validator: validator,
      maxLines: 10,
      minLines: 4,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(15, 6, 15, 6),
        enabled: enabled,
        hintText: hint,
        suffixText: suffixText,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
            borderSide: BorderSide(
                //   color: Colors.white,
                //   style: BorderStyle.none
                ),
            borderRadius: BorderRadius.circular(radius)),
      ),
    );

Widget defaultFormField1({
  required TextEditingController controller,
  required FormFieldValidator<String> validator,
  VoidCallback? onTap,
  required TextInputType type,
  ValueChanged<String>? onSubmit,
  ValueChanged<String>? onChange,
  String? hint,
  String? label,
  bool enabled = true,
  bool isPassword = false,
  Widget? sufIcon,
  Widget? preIcon,
  String? preText,
  var radius = 10.0,
}) =>
    Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(
        textAlign: TextAlign.right,
        onFieldSubmitted: onSubmit,
        onChanged: onChange,
        controller: controller,
        keyboardType: type,
        obscureText: isPassword,
        onTap: onTap,
        validator: validator,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          suffixIcon: sufIcon,
          prefixIcon: preIcon,
          prefixText: preText,
          contentPadding: EdgeInsets.fromLTRB(10, 0, 15, 0),
          enabled: enabled,
          hintText: hint,
          labelText: label,
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(radius)),
        ),
      ),
    );

Widget defaultButton({
  required String? text,
  required VoidCallback onPressed,
  Color btnColor = Colors.green,
  Color txtColor = Colors.white,
  bool isUpperCase = true,
  double radius = 8.0,
  var width = double.infinity,
  var height = 50.0,
  var fontSize = 22.00,
}) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
    ),
    child: MaterialButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
      color: btnColor,
      textColor: txtColor,
      child: Text(
        text!,
        style: TextStyle(fontSize: fontSize),
      ),
    ),
  );
}

Widget defaultTextButton({
  required String text,
  required Function onPressed,
}) {
  return Container(
    alignment: Alignment.centerLeft,
    child: TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(color: defaultColor),
      ),
    ),
  );
}

void navigateTo(BuildContext context, Widget widget) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}

void navigateAndFinish(BuildContext context, Widget widget) {
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => widget),
    (route) => false,
  );
}

Widget myDivider(
  context, {
  var endIndent = 0.0,
  var indent = 0.0,
}) {
  return Divider(
    color: defaultColor.withOpacity(0.5),
    thickness: 1,
    endIndent: endIndent,
    indent: indent,
  );
}

Widget buildCircularProgressIndicator() => Center(
      child: CircularProgressIndicator(),
    );

Widget defaultDrawerItem({
  required String image,
  required String text,
  required GestureTapCallback onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: Row(
      children: [
        SizedBox(
          width: 5,
        ),
        Image.asset(
          'assets/icons/$image',
          height: 30,
          width: 30,
          color: secondColor,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: TextStyle(color: secondColor, fontSize: 20),
        ),
      ],
    ),
  );
}

BorderRadius borderRadiusTop() {
  return BorderRadius.only(
      topRight: Radius.circular(25), topLeft: Radius.circular(25));
}

BorderRadius borderRadiusBottom({var val = 25}) {
  return BorderRadius.only(
      bottomRight: Radius.circular(val), bottomLeft: Radius.circular(val));
}

Widget buildText2(String txt2) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: Text(
      txt2,
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
    ),
  );
}

Widget buildText(String txt1) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: Text(
      txt1,
      style: TextStyle(
        color: secondColor,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    ),
  );
}

// Widget buildCarousel() {
//   List<Widget> images = [
//     ClipRRect(
//         borderRadius: BorderRadius.circular(25),
//         child: Image.asset('assets/images/img1.jpg')),
//     ClipRRect(
//         borderRadius: BorderRadius.circular(25),
//         child: Image.asset('assets/images/img2.jpg')),
//     ClipRRect(
//         borderRadius: BorderRadius.circular(25),
//         child: Image.asset('assets/images/img3.jpg')),
//   ];
//   return Container(
//     color: Colors.white,
//     height: 200,
//     child: CarouselSlider(
//         items: images,
//         options: CarouselOptions(
//           height: 300,
//           aspectRatio: 16 / 9,
//           viewportFraction: 0.8,
//           initialPage: 0,
//           enableInfiniteScroll: true,
//           reverse: false,
//           autoPlay: false,
//           autoPlayInterval: Duration(seconds: 3),
//           autoPlayAnimationDuration: Duration(milliseconds: 800),
//           autoPlayCurve: Curves.fastOutSlowIn,
//           enlargeCenterPage: true,
//           onPageChanged: (index, reason) {},
//           scrollDirection: Axis.horizontal,
//         )),
//   );
// }

// Widget buildCarouselCProfile(BuildContext context, var cubit,
//     {List<Widget> list}) {
//   List<Widget> images = [
//     Image.network(
//       'assets/images/img1.jpg',
//       fit: BoxFit.cover,
//     ),
//     Image.asset(
//       'assets/images/img2.jpg',
//       fit: BoxFit.cover,
//     ),
//     Image.asset(
//       'assets/images/img3.jpg',
//       fit: BoxFit.cover,
//     ),
//   ];
//
//   return ClipRRect(
//     borderRadius: BorderRadius.only(
//         // bottomRight: Radius.circular(25),
//         // bottomLeft: Radius.circular(25),
//         ),
//     child: Carousel(
//       height: 250.0,
//       width: MediaQuery.of(context).size.width * 1.0,
//       initialPage: 0,
//       allowWrap: false,
//       type: Types.simple,
//       onCarouselTap: (i) {
//         print("onTap $i");
//       },
//       indicatorType: IndicatorTypes.bar,
//       indicatorBackgroundOpacity: 0.0,
//       unActiveIndicatorColor: Colors.grey.withOpacity(0.0),
//       indicatorBackgroundColor: defaultColor.withOpacity(0.0),
//       activeIndicatorColor: secondColor.withOpacity(0.0),
//       arrowColor: secondColor,
//       axis: Axis.horizontal,
//       showArrow: true,
//       // children: images,
//
//       children: list,
//       /*List.generate(
//
//                 // cubit.profileCarDetailsModel.images.length == 0 ||
//                 */
//       /*         cubit.profileCarDetailsModel.images.length == null
//               ? 1
//               :*/
//       /*
//                 cubit.profileCarDetailsModel.images.length, (index) {
//               // Asset asset = cubit.carImages[index];
//               return
//                   // cubit.profileCarDetailsModel.images == 1 ||
//                   */
//       /*   cubit.profileCarDetailsModel.images == null
//             ? Image.network(
//                 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRT4gKDtP_saQcsAuBukz2OlfjtOh9DDMI9Edtb1iAfA_2-GI39chp5exgrelld5ViOdZw&usqp=CAU')
//             :*/
//       /*
//                   Image.network(
//                       '${cubit.profileCarDetailsModel.images[index]['file_url']}');
//             }),*/
//     ),
//   );
// }

// Widget buildCarousel1(BuildContext context) {
//   List<Widget> images = [
//     Image.network(
//       'assets/images/img1.jpg',
//       fit: BoxFit.cover,
//     ),
//     Image.asset(
//       'assets/images/img2.jpg',
//       fit: BoxFit.cover,
//     ),
//     Image.asset(
//       'assets/images/img3.jpg',
//       fit: BoxFit.cover,
//     ),
//   ];
//
//   return ClipRRect(
//       borderRadius: BorderRadius.only(
//           // bottomRight: Radius.circular(25),
//           // bottomLeft: Radius.circular(25),
//           ),
//       child: Carousel(
//         height: 250.0,
//         width: MediaQuery.of(context).size.width * 1.0,
//         initialPage: 1,
//         allowWrap: false,
//         type: Types.simple,
//         onCarouselTap: (i) {
//           print("onTap $i");
//         },
//         indicatorType: IndicatorTypes.bar,
//         indicatorBackgroundOpacity: 0.0,
//         unActiveIndicatorColor: Colors.grey.withOpacity(0.0),
//         indicatorBackgroundColor: defaultColor.withOpacity(0.0),
//         activeIndicatorColor: secondColor.withOpacity(0.0),
//         arrowColor: secondColor,
//         axis: Axis.horizontal,
//         showArrow: true,
//         children: images,
//
//         // children: List.generate(
//         //     cubit.profileCarDetailsModel.images.length == 0 ? 1 : cubit.profileCarDetailsModel.images.length, (index) {
//         // Asset asset = cubit.carImages[index];
//         // return Image.network(
//         //   '${cubit.profileCarDetailsModel.images[index] == null ? 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRT4gKDtP_saQcsAuBukz2OlfjtOh9DDMI9Edtb1iAfA_2-GI39chp5exgrelld5ViOdZw&usqp=CAU' :cubit.profileCarDetailsModel.images[index]}',
//       ));
// }

AppBar defaultAppBar(BuildContext context, {String? title}) {
  return AppBar(
    elevation: 0.0,
    title: Text(
      title!,
      style: TextStyle(color: defaultColor),
    ),
    backgroundColor: bgColor,
    actions: [
      IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_forward_ios,
          color: defaultColor,
        ),
      ),
      const SizedBox(width: 10),
    ],
  );
}

AppBar defaultAppBar1(BuildContext context, {String? title, var leadingIcon}) {
  return AppBar(
    elevation: 0.0,
    automaticallyImplyLeading: false,
    title: Text(
      title!,
      style: TextStyle(color: bgColor),
    ),
    centerTitle: true,
    backgroundColor: defaultColor,
    leading: leadingIcon,
    actions: [
      IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_forward_ios,
          color: bgColor,
        ),
      ),
      const SizedBox(width: 10),
    ],
  );
}

Container buildSellerItem({required String icon, required String title}) {
  return Container(
    height: 45,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      boxShadow: [
        const BoxShadow(
          color: Colors.black,
        ),
        const BoxShadow(
          color: Colors.black,
          spreadRadius: -15.0,
          offset: Offset(5.0, 10.0),
          blurRadius: 12.0,
        ),
      ],
      color: secondColor,
    ),
    child: Row(
      children: [
        SizedBox(
          width: 50,
        ),
        Image.asset('assets/icons/$icon.png'),
        SizedBox(
          width: 30,
        ),
        Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16, color: defaultColor),
        ),
      ],
    ),
  );
}

void defaultSnackBar(BuildContext context, {required String text}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      text,
      style: TextStyle(color: secondColor),
    ),
    duration: Duration(seconds: 3),
    backgroundColor: defaultColor,
  ));
}

Widget borderButton({
  required VoidCallback onPressed,
  String? text,
  double width = double.infinity,
  var fontSize = 22.00,
  double height = 50.0,
  var borderColor = Colors.white,
  var txtColor = Colors.white,
  var radius = 10.0,
}) {
  return Container(
    height: height,
    width: width,
    child: OutlinedButton(
      onPressed: onPressed,
      child: Text(
        text!.toUpperCase(),
        style: TextStyle(
          fontSize: fontSize,
          color: txtColor,
        ),
      ),
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          width: 1.0,
          color: borderColor,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    ),
  );
}

Widget buildTextHeadLine({String? text}) {
  return Text(
    text!,
    style: TextStyle(
      fontSize: 24,
      color: defaultColor,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget buildTextSubTitle(
  context, {
  String? text,
}) {
  return Container(
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width * 0.8,
    child: Text(
      text!,
      style: TextStyle(
        fontSize: 20,
        color: Colors.grey,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    ),
  );
}

Row buildRowItem(context, {String? iconImage, String? txt}) {
  return Row(
    children: [
      Image.asset(
        '$iconImage',
        height: 25,
      ),
      const SizedBox(width: 10),
      Container(
        width: MediaQuery.of(context).size.width * 0.6,
        child: Text(
          '$txt',
          style: TextStyle(
            color: thirdColor,
            fontSize: 15,
          ),
        ),
      ),
    ],
  );
}
