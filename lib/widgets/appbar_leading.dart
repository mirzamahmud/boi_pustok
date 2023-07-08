import 'package:flutter/material.dart';

class AppBarLeading extends StatelessWidget 
{
  const AppBarLeading({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      
      height: 40.0, width: 40.0,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(2.0),
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(10), 
        border: Border.all(color: Theme.of(context).primaryColor, width: 2.0)
      ),
      child: GestureDetector(

        onTap: (){

          Navigator.pop(context);
        },
        child: Container(
        
          height: 40.0, width: 40.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
      
            borderRadius: BorderRadius.circular(10), 
            color: Theme.of(context).primaryColor
          ),
      
          child: const Icon(Icons.arrow_back, color: Colors.white),
        ),
      )
    );
  }
}