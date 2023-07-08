import 'package:flutter/material.dart';

class BottomRowButtons extends StatefulWidget {

  const BottomRowButtons({ Key? key }) : super(key: key);

  @override
  _BottomRowButtonsState createState() => _BottomRowButtonsState();
}

class _BottomRowButtonsState extends State<BottomRowButtons> {

  @override
  Widget build(BuildContext context) {

    return Row(

      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Container(

          height: 50.0, width: 50.0,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(2.0),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), border: Border.all(color: Colors.red, width: 2.0)),
          child: GestureDetector(

            onTap: (){},
            child: Container(
          
              height: 50.0, width: 50.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Colors.red),
              child: const Icon(Icons.facebook, color: Colors.white, size: 30.0),
            ),
          ),
        ),

        const SizedBox(width: 15.0),

        Container(

          height: 50.0, width: 50.0,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(2.0),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), border: Border.all(color: Colors.red, width: 2.0)),
          child: GestureDetector(

            onTap: (){},
            child: Container(
          
              height: 50.0, width: 50.0,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Colors.red,),
              child: const Icon(Icons.sync, color: Colors.white, size: 30.0),
            ),
          ),
        ),

        const SizedBox(width: 15.0),

        Container(

          height: 50.0, width: 50.0,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(2.0),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), border: Border.all(color: Colors.grey, width: 2.0)),
          child: GestureDetector(

            onTap: (){},
            child: Container(
          
              height: 50.0, width: 50.0,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Colors.grey),
              child: const Icon(Icons.block, color: Colors.white, size: 30.0),
            ),
          ),
        ),

        const SizedBox(width: 15.0),

        Container(

          height: 50.0, width: 50.0,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(2.0),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), border: Border.all(color: Colors.blue, width: 2.0)),
          child: GestureDetector(

            onTap: (){},
            child: Container(
          
              height: 50.0, width: 50.0,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Colors.blue),
              child: const Icon(Icons.share_rounded, color: Colors.white, size: 30.0),
            ),
          ),
        ),

        const SizedBox(width: 15.0),
        
        Container(

          height: 50.0, width: 50.0,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(2.0),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), border: Border.all(color: Colors.blue, width: 2.0)),
          child: GestureDetector(

            onTap: (){},
            child: Container(
          
              height: 50.0, width: 50.0,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Colors.blue),
              child: const Icon(Icons.person, color: Colors.white, size: 30.0),
            ),
          ),
        ),
      ],
    );
  }
}