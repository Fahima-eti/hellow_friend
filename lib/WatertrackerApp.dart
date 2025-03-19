import 'package:flutter/material.dart';

import 'Widget/Water.dart';

class WaterApp extends StatefulWidget {
  const WaterApp({super.key});

  @override
  State<WaterApp> createState() => _WaterAppState();
}

class _WaterAppState extends State<WaterApp> {
  int _currentintake = 0;
  final int _goal = 2000;

  void _addwater (int amount){
    if(_currentintake < _goal){
      setState(() {
        _currentintake = (_currentintake+amount).clamp(0, _goal);
      });
    }
  }
  void reset(){
    setState(() {
      _currentintake = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    double progress = (_currentintake/_goal).clamp(0.0, 1.0);
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text("Watertracker",style: TextStyle(
          fontSize: 30,fontWeight: FontWeight.w500
        ),),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height:50 ,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
                  colors: [Colors.blue.shade100,Colors.white],
                ),

                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 10,
                    color: Colors.blue.shade100
                  )
                ]
              ),
              padding: EdgeInsets.all(20),
              child: Column(
             children: [
               Text("Today's In Take",style: TextStyle(
                 fontSize: 20,fontWeight: FontWeight.w500
               ),),
               SizedBox(
                 height: 20,
               ),
               Text("${_currentintake}ml",style: TextStyle(
                 fontSize: 30,fontWeight: FontWeight.bold,color: Colors.blue
               ),)
              ],
              ),
            ),
            SizedBox(height: 20,),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  child: CircularProgressIndicator(
                    value: progress,
                    backgroundColor: Colors.grey.shade300,
                    color: Colors.blue,
                    strokeWidth: 6,
                  ),
                ),
                Text("${(progress*100).toInt()}%",style: TextStyle(fontSize:28,color: Colors.blue,
                fontWeight: FontWeight.bold),)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            waterbtn(amount: 200,icon:(Icons.local_drink),onClick:()=>_addwater(200) ,),
            waterbtn(amount: 500, onClick: ()=>_addwater(500),),
            waterbtn(amount: 1000, onClick: () =>_addwater(1000),icon: (Icons.local_cafe),),

            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: reset,
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade200),
                    child: Text("Reset",style: TextStyle(
                      color: Colors.white,fontSize: 25,fontWeight: FontWeight.w400
                    ),)),
              ),
            )
              ],
        ),
      ),
    );
  }
}

