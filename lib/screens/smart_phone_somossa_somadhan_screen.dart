import 'package:boi_pustok/widgets/appbar_leading.dart';
import 'package:flutter/material.dart';

class SmartPhoneSomossaSomadhanScreen extends StatefulWidget {

  const SmartPhoneSomossaSomadhanScreen({ Key? key }) : super(key: key);

  @override
  _SmartPhoneSomossaSomadhanScreenState createState() => _SmartPhoneSomossaSomadhanScreenState();
}

class _SmartPhoneSomossaSomadhanScreenState extends State<SmartPhoneSomossaSomadhanScreen>
{

  List<String> shishuderRupkotharList = [

    "সাত ভাই চম্পা",
    "মৌমাছি ও কোলা ব্যাঙ",
    "ভাগ্যবানের ভাগ্য",
    "গোন ও কোমার বন্ধুত্ব",
    "চুলার উপর টাকা",
    "সাত বোন",
    "জাদুর পাথর",
    "সাহসী সামদ্রুপ",
    "ইঁদুরের মা",
    "গম্ভীর রাণী",
    "ছোট পরী ও রাখাল",
    "রাজা ও রাজকন্যা",
    "নপুংসক বাদশার সন্তান",
    "দুই চোর",
    "রূপকথার রাজারানী",
    "পেত্নির পরিবার",
    "বুড়ি ও ব্যবসায়ী",
    "অত্যাচারী বাদশাহ",
    "জেলের গল্প",
    "লোভের পরিণতি",
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

            width: 220.0,
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(2.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(10.0), 
              border: Border.all(color: Theme.of(context).primaryColor, width: 2.0)
            ),
            child: SizedBox(

              width: 220.0, height: 30.0,
              child: MaterialButton(

                elevation: 0, focusElevation: 0, hoverElevation: 0, highlightElevation: 0,
                color: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                onPressed: (){},
                child: const Text(

                  "স্মার্টফোনের সমস্যার সমাধান", 
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
          itemCount: shishuderRupkotharList.length,
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

                  shishuderRupkotharList[index],
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