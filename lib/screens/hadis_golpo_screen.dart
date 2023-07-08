import 'package:boi_pustok/widgets/appbar_leading.dart';
import 'package:flutter/material.dart';

class HadisGolpoScreen extends StatefulWidget {

  const HadisGolpoScreen({ Key? key }) : super(key: key);

  @override
  _HadisGolpoScreenState createState() => _HadisGolpoScreenState();
}

class _HadisGolpoScreenState extends State<HadisGolpoScreen> 
{

  List<String> islamicNameList = [

    "অদ্ভূত আবেদন",
    "লজ্জাশীলতা",
    "ইসলাম গ্রহণের কাহিনী",
    "মন্দ আচরণের ফল",
    "গীবতের ভয়াবহতা",
    "অত্যাচারী বাদশাহ",
    "মদীনার পথে",
    "খিযির ও মূসা(আ.)",
    "রাসুল (সাঃ) এর মুজিযা",
    "ধৈর্য ও বুদ্ধিমত্তা",
    "আটকে পড়া যুবক",
    "পরীক্ষা",
    "দাজ্জাল"
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

                  "হাদিসের গল্প", 
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