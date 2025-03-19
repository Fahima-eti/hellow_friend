import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController controller = TextEditingController();
  String fromUnit = "Meters";
  String toUnit = "Kilometers";
  double result = 0.0;

  Map<String,dynamic>convertType={
  "Meters":1.0,
  "Kilometers":0.001,
  "Centimeters":100,
  "Inches":39.37,
  "Feet":3.08600,
};

  convert(){
    double input = double.tryParse(controller.text) ?? 0;
    if (input > 0) {
      result = input * (convertType[toUnit]! / convertType[fromUnit]!);
    } else {
      result = 0.0;
    }


   setState(() {

   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.purpleAccent,
        title: Text("Unit Convertor",style: TextStyle(
          fontSize: 30,fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextFormField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                
              )
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DropdownButton<String>(
                  value: fromUnit,
                  items:convertType.keys.map((x){
                    return DropdownMenuItem(child: Text(x),value: x,);
                  }).toList() ,
                  onChanged: (value){
                    fromUnit = value!;
                    setState(() {

                    });
                  }),
              Text("to"),
              DropdownButton<String>(
                  value: toUnit,
                  items:convertType.keys.map((x){
                    return DropdownMenuItem(child: Text(x),value: x,);
                  }).toList() ,
                  onChanged: (value){
                    toUnit = value!;
                    setState(() {

                    });
                  })
            ],
          ),
          SizedBox(height: 10,),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: (){
              if(controller.text.isNotEmpty){
                convert();
              }
            },
                child: Text("Convert")),
          ),
          Text(result.toString())
        ],
      ),
    );
  }
}
