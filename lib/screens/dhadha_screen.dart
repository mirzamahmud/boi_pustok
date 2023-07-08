import 'package:boi_pustok/widgets/appbar_leading.dart';
import 'package:flutter/material.dart';

class DhaDhaScreen extends StatefulWidget {

  const DhaDhaScreen({ Key? key }) : super(key: key);

  @override
  _DhaDhaScreenState createState() => _DhaDhaScreenState();
}

class _DhaDhaScreenState extends State<DhaDhaScreen> 
{

  List<String> dhadhaList = [

    "দুনিয়া কাঁপানো ধাঁধা পর্ব - ১",
    "দুনিয়া কাঁপানো ধাঁধা পর্ব - ২",
    "দুনিয়া কাঁপানো ধাঁধা পর্ব - ৩",
    "দুনিয়া কাঁপানো ধাঁধা পর্ব - ৪",
    "দুনিয়া কাঁপানো ধাঁধা পর্ব - ৫",
    "দুনিয়া কাঁপানো ধাঁধা পর্ব - ৬",
    "দুনিয়া কাঁপানো ধাঁধা পর্ব - ৭",
    "দুনিয়া কাঁপানো ধাঁধা পর্ব - ৮",
    "দুনিয়া কাঁপানো ধাঁধা পর্ব - ৯",
    "দুনিয়া কাঁপানো ধাঁধা পর্ব - ১০",
    "মজার ধাঁধা পর্ব - ১১",
    "মজার ধাঁধা পর্ব - ১২",
    "মজার ধাঁধা পর্ব - ১৩",
    "মজার ধাঁধা পর্ব - ১৪",
    "মজার ধাঁধা পর্ব - ১৫",
    "মজার ধাঁধা পর্ব - ১৬",
    "মজার ধাঁধা পর্ব - ১৭",
    "মজার ধাঁধা পর্ব - ১৮",
    "মজার ধাঁধা পর্ব - ১৯",
    "মজার ধাঁধা পর্ব - ২০"
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

                  "মজার মজার ধাঁধা",
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
          itemCount: dhadhaList.length,
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

                  dhadhaList[index],
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