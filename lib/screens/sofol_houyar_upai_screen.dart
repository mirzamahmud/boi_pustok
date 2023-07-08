import 'package:boi_pustok/widgets/appbar_leading.dart';
import 'package:flutter/material.dart';

class SofolHouyarUpaiScreen extends StatefulWidget {

  const SofolHouyarUpaiScreen({ Key? key }) : super(key: key);

  @override
  _SofolHouyarUpaiScreenState createState() => _SofolHouyarUpaiScreenState();
}

class _SofolHouyarUpaiScreenState extends State<SofolHouyarUpaiScreen>
{

  List<String> sofolHouyarList = [

    "বিশ্বাস করুন -আপনি সফল হবেন",
    "উক্তিসমূহ - ১",
    "উক্তিসমূহ - ২",
    "উক্তিসমূহ - ৩",
    "বারবার ফেল করেও এখন তিনি\nবিশ্বসেরা",
    "ব্যর্থতাই সফলতার চাবিকাঠি!!",
    "বিন্দু থেকে সিন্ধু হওয়া কালজয়ীদের\nগল্প",
    "বডেনিস মেধাবী ছাত্র মার্টিন",
    "জীবনে সফল হতে চান?",
    "কার্যকর যোগাযোগ",
    "আগ্রহ",
    "যা বিশ্বাস করেন তাই করুন",
    "সাহস",
    "বিনয়",
    "নম্রতা",
    "ব্যক্তি সচেতনতা",
    "ভাল আচরণ",
    "যারা ফেল করেছেন, তাদের মধ্যে\nআমিই সবচেয়ে ভালো -বিল গেটস",
    "ক্ষুধার্ত থেকো, বোকা থেকো - স্টিভ\nজবস"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Padding(

          padding: EdgeInsets.all(8.0),
          child: AppBarLeading(),
        ),
        actions: [

          Container(

            width: 200.0,
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(2.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(10.0), 
              border: Border.all(color: Theme.of(context).primaryColor, width: 2.0)
            ),
            child: SizedBox(

              width: 200.0, height: 30.0,
              child: MaterialButton(

                elevation: 0, focusElevation: 0, hoverElevation: 0, highlightElevation: 0,
                color: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                onPressed: (){},
                child: const Text(

                  "সফল হওয়ার উপায়", 
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 14.0, fontWeight: FontWeight.bold
                  )
                ),
              ),
            ),
          )
        ]
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(

          scrollDirection: Axis.vertical,
          itemCount: sofolHouyarList.length,
          separatorBuilder: (_, index) => const SizedBox(height: 8.0),
          itemBuilder: (context, index){

            return Container(

              width: MediaQuery.of(context).size.width,
              height: 60.0,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(2.0),
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(15.0), 
                border: Border.all(color: Colors.orangeAccent, width: 2)
              ),

              child: MaterialButton(
                
                onPressed: (){},

                elevation: 0, focusElevation: 0, hoverElevation: 0, highlightElevation: 0,
                height: MediaQuery.of(context).size.height,
                minWidth: MediaQuery.of(context).size.width,
                color: Colors.orangeAccent,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                child: Text(

                  sofolHouyarList[index],
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w700),
                ),
              ),
            );
          },
        ),
      ),
      
    );
  }
}