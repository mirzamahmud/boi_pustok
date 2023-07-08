import 'package:boi_pustok/widgets/bottom_row_buttons.dart';
import 'package:boi_pustok/widgets/start_screens_top_buttons.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget 
{
  const StartScreen({ Key? key }) : super(key: key);

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> 
{

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SafeArea(

        child: Center(

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Container(

                width: 120.0, height: 40.0,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(

                  color: Colors.white, 
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Theme.of(context).primaryColor, width: 2.0)
                ),
                child: Container(

                  width: 120.0, height: 40.0,
                  decoration: BoxDecoration(color: Theme.of(context).primaryColor, borderRadius: BorderRadius.circular(10.0)),
                  alignment: Alignment.center,
                  child: const Text(

                    "12:15:21", 
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.w500),
                  ),
                ),
              ),

              const SizedBox(height: 30.0),

              Container(

                height: 220.0, width: 220.0,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(40.0)),
                child: ClipRRect(

                  borderRadius: BorderRadius.circular(40.0),
                  child: Image.asset("assets/images/boi-pustok.png", fit: BoxFit.cover),
                ),
              ),

              const SizedBox(height: 50.0),

              const TopButtons(),

              const BottomRowButtons(),
              const SizedBox(height: 20),

            ],
          ),
        ),
      ),
      
    );
  }
}