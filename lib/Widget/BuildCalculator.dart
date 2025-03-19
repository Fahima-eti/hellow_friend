import 'package:flutter/material.dart';

class CalculatorBuild extends StatelessWidget {
  String text;
  Color ? color;
 CalculatorBuild({
    super.key,
   this.color,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                  backgroundColor: color ?? Colors.grey[850],
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
              ),
              child: Text(text,style: TextStyle(
                  fontSize: 24,color: Colors.white,fontWeight: FontWeight.bold
              ),))
        ],
      ),
    );
  }
}