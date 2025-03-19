import 'package:flutter/material.dart';

import 'Widget/BuildCalculator.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _output = "0";
  String _input = "";
  String operand = "";
  double num1 = 0;
  double num2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
appBar: AppBar(
  title: Text("Calculator",style: TextStyle(
    fontSize: 30,
  ),),
  backgroundColor: Colors.orange,
  centerTitle: true,
),
    body: Expanded(
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    CalculatorBuild(text: '7',),
                    CalculatorBuild(text: '8',),
                    CalculatorBuild(text: '9',),
                    CalculatorBuild(text: '/',color: Colors.orange,),
          ]),Row(
          children: [
                    CalculatorBuild(text: '4',),
                    CalculatorBuild(text: '5',),
                    CalculatorBuild(text: '6',),
                    CalculatorBuild(text: '*',color: Colors.orange,),
                    ]),Row(children: [
                    CalculatorBuild(text: '1',),
                    CalculatorBuild(text: '2',),
                    CalculatorBuild(text: '3',),
                    CalculatorBuild(text: '-',color: Colors.orange,),
                       ]),Row(children: [
                    CalculatorBuild(text: 'C',color: Colors.red,),
                    CalculatorBuild(text: '0',),
                    CalculatorBuild(text: '=',color: Colors.green,),
                    CalculatorBuild(text: '+',color: Colors.orange,),
    ]),
    ],
    )
            ),
          ),
         ),

    );
  }
}



