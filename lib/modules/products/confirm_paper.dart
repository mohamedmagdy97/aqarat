import 'package:aqarat_app/components/colors.dart';
import 'package:aqarat_app/components/components.dart';
import 'package:aqarat_app/modules/products/announce_details_screen.dart';
import 'package:flutter/material.dart';

class ConfirmPaperScreen extends StatefulWidget {
  @override
  _ConfirmPaperScreenState createState() => _ConfirmPaperScreenState();
}

class _ConfirmPaperScreenState extends State<ConfirmPaperScreen> {
  bool checkValue = false;
  bool checkValue2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar1(
        context,
        title: 'إتفاقية العمولة',
      ),
      body: ListView(
        children: [
          Container(
            height: 150,
            color: Colors.grey[100],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('بسم الله الرحمن الرحيم'),
                const Text(
                  'وَأَوْفُواْ بِعَهْدِ ٱللَّهِ إِذَا عَٰهَدتُّمْ وَلَا تَنقُضُواْ ٱلْأَيْمَٰنَ بَعْدَ تَوْكِيدِهَا وَقَدْ جَعَلْتُمُ ٱللَّهَ عَلَيْكُمْ كَفِيلًا ۚ إِنَّ ٱللَّهَ يَعْلَمُ مَا تَفْعَلُونَ',
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          const SizedBox(height: 30),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: checkValue,
                      onChanged: (val) {
                        setState(() {
                          checkValue = val!;
                        });
                      },
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: const Text(
                            'اتعهد وأفسم بالله أنا المعلن أن ادفع دلالة الموقع وهي 50 ريال من دلالة الايجار والاستثمار او 200 ريال من دلالة البيع والله على ما أقول شهيد')),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: checkValue2,
                      onChanged: (val) {
                        setState(() {
                          checkValue2 = val!;
                        });
                      },
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: const Text(
                        'هل انت مباشر مع مالك العقارب أو مع الوكيل وتتحمل كامل المسؤولية',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: defaultButton(
            text: 'استمرار',
            onPressed: () {
              if (checkValue == true || checkValue2 == true) {
                navigateTo(context, AnnounceDetailsScreen());
              }
            },
            btnColor: defaultColor,
            radius: 0.0),
      ),
    );
  }
}
