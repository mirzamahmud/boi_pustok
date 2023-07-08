import 'package:boi_pustok/widgets/appbar_leading.dart';
import 'package:flutter/material.dart';

class NamazSuraDoaScreen extends StatefulWidget {

  const NamazSuraDoaScreen({ Key? key }) : super(key: key);

  @override
  _NamazSuraDoaScreenState createState() => _NamazSuraDoaScreenState();
}

class _NamazSuraDoaScreenState extends State<NamazSuraDoaScreen> 
{

  List<String> namazSuraDoaList = [

    "আযান","নামাজ ফরজ হওয়ার শর্ত","ওজু করার সঠিক নিয়ম","নামাজের ফরজ সমূহ",
    "নামাজের ওয়াজিব সমূহ","নামাজের সুন্নাতে মুয়াক্কাদা","নামাজের সুন্নত সমূহ","নামাজের মোস্তাহাব সমূহ",
    "নামাজের মাকরূহাত","ফরজ নামাজ","ফরজ নামাজের ওয়াক্ত সমূহ","সুন্নত নামাজের নিয়ম",
    "নামাজের নিষিদ্ধ সময়","নামাজের নিষিদ্ধ কাজ সমূহ","জায়নামাজে দাঁড়িয়ে পড়ার দোআ","তাকবীরে তাহরীমা",
    "ফজরের সুন্নত দুই রাকাতের নিয়ত","যোহরের সুন্নত চার রাকাত নামাজের\nনিয়ত", "আছরের সুন্নত চার রাকাত নামাজের\nনিয়ত","মাগরিবের তিন রাকাত ফরজ\nনামাজের নিয়ত",
    "এশার সুন্নত চার রাকাত নামাজের\nনিয়ত","বিতরের নামাজ পড়িবার নিয়ম","তাহাজ্জুদ নামাজের নিয়ম","জুমআর নামাজ",
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

                  "নামাজের সূরা ও দোয়া", 
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
          itemCount: namazSuraDoaList.length,
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

                  namazSuraDoaList[index],
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