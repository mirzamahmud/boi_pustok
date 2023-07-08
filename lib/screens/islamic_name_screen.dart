import 'package:boi_pustok/widgets/appbar_leading.dart';
import 'package:flutter/material.dart';

class IslamicNameScreen extends StatefulWidget {

  const IslamicNameScreen({ Key? key }) : super(key: key);

  @override
  _IslamicNameScreenState createState() => _IslamicNameScreenState();
}

class _IslamicNameScreenState extends State<IslamicNameScreen> 
{

  List<String> islamicNameList = [

    "ভূমিকা",
    "শিরকী নাম",
    "ইসলামী ও উত্তম নাম রাখার নীতি",
    "শিশুর সুন্দর নাম রাখার গুরুত্ব",
    "ভালো ও মন্দ নামের প্রভাব",
    "নাম নিয়ে বাস্তব ঘটনা",
    "নামকরণের সময়",
    "নামকরণে কুসংস্কারের উদাহরণ",
    "শিরকী আকীদা",
    "নামকরণে কতিপয় লক্ষ্যণীয় দিক",
    "তাহনীক ও আকীকা",
    "আল্লাহর ৯৯ টি নাম, অর্থ ও ব্যাখ্যা",
    "আল্লাহর নামে মিল রেখে নাম",
    "নবী ও রাসূলগণের নাম",
    "নির্বাচিত পুরুষ সাহাবীর নাম",
    "ছেলে শিশুর আরো কিছু সুন্দর নাম",
    "মুসলিম নেক নারীদের নাম",
    "মহিলা সাহাবীবর্গের নাম",
    "মেয়ে শিশুর আরো কিছু সুন্দর নাম",
    "উপসংহার"
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

            width: 150.0,
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(2.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(10.0), 
              border: Border.all(color: Theme.of(context).primaryColor, width: 2.0)
            ),
            child: SizedBox(

              width: 150.0, height: 30.0,
              child: MaterialButton(

                elevation: 0, focusElevation: 0, hoverElevation: 0, highlightElevation: 0,
                color: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                onPressed: (){},
                child: const Text(

                  "ইসলামিক নাম", 
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 16.0, fontWeight: FontWeight.w600
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
          itemCount: islamicNameList.length,
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

                  islamicNameList[index],
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