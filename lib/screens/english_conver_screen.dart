import 'package:boi_pustok/widgets/appbar_leading.dart';
import 'package:flutter/material.dart';

class EnglishConverScreen extends StatefulWidget {
  const EnglishConverScreen({ Key? key }) : super(key: key);

  @override
  _EnglishConverScreenState createState() => _EnglishConverScreenState();
}

class _EnglishConverScreenState extends State<EnglishConverScreen> 
{

  List<String> englishConversationList = [

    "আলাপের শুরুতে",
    "কারো নাম জানতে চাওয়া",
    "শিক্ষকের সাথে কথোপকথন",
    "ইংরেজি নিয়ে কথোপকথন",
    "গিফট কেনা নিয়ে আলোচনা",
    "প্রতিদিনের ইংরেজি কথোপকথন",
    "কথাবার্তা ও অনুভূতি বিষয়ক",
    "ভ্রমণ অভিজ্ঞতা নিয়ে কথোপকথন",
    "সিনেমা দেখা নিয়ে কথোপকথন",
    "Friends দের সাথে কথোপকথন",
    "হসপিটাল সম্পর্কিত কথোপকথন",
    "রাস্তায় চলাচল সম্পর্কে কিছু\nকথোপকথন",
    "মনোহারির দোকানে কথোপকথন",
    "বিউটি পার্লারে কথোপকথন",
    "রান্নাঘরে কথোপকথন",
    "জুতার দোকানে কথোপকথন",
    "আইনসংক্রান্ত বিষয়",
    "শাড়ির দোকানে",
    "কথা বলার সময়",
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

              width: 200.0,
              child: MaterialButton(

                elevation: 0, focusElevation: 0, hoverElevation: 0, highlightElevation: 0,
                color: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                onPressed: (){},
                child: const Text(

                  "ইংরেজী কথোপকথন",
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
          itemCount: englishConversationList.length,
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

                  englishConversationList[index],
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ),
            );
          },
        ),
      ),
      
    );
  }
}