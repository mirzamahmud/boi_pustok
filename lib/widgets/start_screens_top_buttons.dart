import 'package:boi_pustok/screens/home_screen.dart';
import 'package:flutter/material.dart';

class TopButtons extends StatefulWidget {

  const TopButtons({Key? key}) : super(key: key);

  @override
  _TopButtonsState createState() => _TopButtonsState();
}

class _TopButtonsState extends State<TopButtons> {


  @override
  Widget build(BuildContext context) {
  
    return Column(

      children: [

        Container(

          width: 140.0, height: 40.0,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(2.0),
          decoration: BoxDecoration(

            color: Colors.white, 
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Colors.amber, width: 2.0)
          ),
          child: MaterialButton(

            onPressed: (){},

            elevation: 0, focusElevation: 0, highlightElevation: 0, hoverElevation: 0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            minWidth: 140.0, height: 40.0,
            color: Colors.amber,
            child: const Text(

              "রং পরিবর্তন", 
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w600)
            ),
          ),
        ),

        const SizedBox(height: 10.0),

        Container(

          width: 200.0, height: 40.0,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(2.0),
          decoration: BoxDecoration(

            color: Colors.white, 
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Colors.amber, width: 2.0)
          ),
          child: MaterialButton(

            onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
            },

            elevation: 0, focusElevation: 0, highlightElevation: 0, hoverElevation: 0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            height: 40.0, minWidth: 200.0,
            color: Colors.amber,
            child: const Text(

              "বইয়ের তালিকা", 
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w600)
            ),
          ),
        ),
        const SizedBox(height: 10.0),

        Padding(

          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Row(

            children: [

              Expanded(

                child: Container(

                  width: 100.0, height: 40.0,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(2.0),
                  decoration: BoxDecoration(

                    color: Colors.white, 
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.blue, width: 2.0)
                  ),
                  child: MaterialButton(

                    onPressed: (){},

                    elevation: 0, focusElevation: 0, highlightElevation: 0, hoverElevation: 0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    height: MediaQuery.of(context).size.height,
                    minWidth: MediaQuery.of(context).size.width,
                    color: Colors.blue,
                    child: const Text(

                      "আরো অ্যাপস", 
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w600)
                    ),
                  ),
                )
              ),

              const SizedBox(width: 5.0),

              Expanded(

                child: Container(

                  width: 100.0, height: 40.0,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(2.0),
                  decoration: BoxDecoration(

                    color: Colors.white, 
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.red, width: 2.0)
                  ),
                  child: MaterialButton(

                    onPressed: (){},

                    elevation: 0, focusElevation: 0, highlightElevation: 0, hoverElevation: 0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    height: MediaQuery.of(context).size.height,
                    minWidth: MediaQuery.of(context).size.width,
                    color: Colors.red,
                    child: const Text(

                      "রেটিং দিন", 
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w600)
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 20.0),
      ],
      
    );
  }
}