import 'package:boi_pustok/widgets/appbar_leading.dart';
import 'package:flutter/material.dart';

class MathFormulaScreen extends StatefulWidget {

  const MathFormulaScreen({ Key? key }) : super(key: key);

  @override
  _MathFormulaScreenState createState() => _MathFormulaScreenState();
}

class _MathFormulaScreenState extends State<MathFormulaScreen>
{

  List<String> mathFormulaList = [

    "গণিতের জনক যারা",
    "বীজগণিতের সূত্র",
    "পাটিগণিত এর প্রয়োজনীয় সূত্র",
    "ত্রিকোণমিতির প্রাথমিক ধারণা",
    "ত্রিকোণমিতির সূত্রাবলী",
    "অঙ্কের জ্যামিতি সূত্র",
    "পরিমিতির সূত্রাবলী"
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

                  "গণিতের সূত্র", 
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
          itemCount: mathFormulaList.length,
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

                  mathFormulaList[index],
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