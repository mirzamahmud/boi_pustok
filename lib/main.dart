import 'package:boi_pustok/screens/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() 
{
  
  SystemChrome.setSystemUIOverlayStyle(

    SystemUiOverlayStyle(

      statusBarColor: Colors.orange[600],
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.orange[600]
    )
  );

  runApp(const BoiPustok());
}

class BoiPustok extends StatelessWidget 
{
  const BoiPustok({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primaryColor: Colors.orange[600],
        scaffoldBackgroundColor: Colors.white,

      ),
      home: const StartScreen(),
    );
  }
}