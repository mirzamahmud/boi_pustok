import 'package:boi_pustok/widgets/appbar_leading.dart';
import 'package:flutter/material.dart';

class SMSScreen extends StatefulWidget 
{
  const SMSScreen({ Key? key }) : super(key: key);

  @override
  _SMSScreenState createState() => _SMSScreenState();
}

class _SMSScreenState extends State<SMSScreen> 
{

  List<String> smsList = [

    "হ্যাপি নিউ ইয়ার SMS বাংলা",
    "হ্যাপি নিউ ইয়ার SMS ইংলিশ",
    "বৈশাখী এস.এম.এস",
    "বন্ধু এস.এম.এস",
    "শুপ্রভাত এস.এম.এস",
    "শুভ রাত্রি এস.এম.এস",
    "বৃষ্টির দিনের এস.এম.এস",
    "ইসলামিক এস.এম.এস",
    "মিস ইউ এস.এম.এস",
    "মা-বাবার এস.এম.এস",
    "ঈদ মোবারক এস.এম.এস",
    "উপদেশমূলক এস.এম.এস",
    "মনিষীদের বাণী"
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

                  "এস.এম.এস",
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
          itemCount: smsList.length,
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

                  smsList[index],
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w700),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}