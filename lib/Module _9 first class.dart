

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Module_9 extends StatelessWidget {
  const Module_9({super.key});

  @override
  Widget build(BuildContext context) {
    double ScreenHeight = MediaQuery.of(context).size.height;
    double ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
appBar: AppBar(
  title: Text("Module-9",style: TextStyle(
    fontSize: 30
  ),),
  centerTitle: true,
),
      body: Center(
        child: Container(
          height: ScreenHeight,
          width: ScreenWidth,
          decoration: BoxDecoration(
            color: Colors.grey,
          ),
          child: Center(
            child: Text("Responsive Design",style: TextStyle(color: Colors.black,fontSize: 40),),
          ),
        ),
      ),
    );

  }
}

class WrapExample extends StatelessWidget {
  List<String>Categories = [
  "Fruit","Vegetable","Chicken","Fish","Flowers","Frozen",
  "Snacks"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap Example"),
        centerTitle: true,
      ),
      body:Column(
        children: [
      Padding(
          padding: const EdgeInsets.all(8.0),
      child:Wrap(
        spacing: 10,
        runSpacing: 5,
        children:Categories.map((Category){
          return Chip(label: Text(Category),
    backgroundColor: Colors.blue.shade100,);
    }).toList(),
      )
      ),
          Expanded(child:
          Padding(
              padding: const EdgeInsets.all(8.0) ,
            child: GridView.count(crossAxisCount: 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children:List.generate(100, (index)
            =>Container(child: Center(
              child: Text("Item${index}",),),
            color: Colors.pink.shade100,)
            ) )
            

            ),

          )

  ]),
            );
  }
}

class Layoutexample extends StatelessWidget {
  const Layoutexample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layout Example"),
        centerTitle: true,
      ),
      body: LayoutBuilder(
          builder:(context,con){
            if(con.maxWidth>400){
              return Center(
                child: Text("This is Mobile phone"),
              );
            }else{
              return  Center(
                child: Text("This is tablet layout"),
              );
            };
          }
      ),
    );
  }
}

class Aspect extends StatelessWidget {
  const Aspect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Module-9"),
        centerTitle: true,
      ),
body: Column(
  children: [
    Container(
      color: Colors.blue.shade100,
      child: AspectRatio(aspectRatio: 16/9,
        child: Container(
          child: Center(
            child: Text("Aspect Ratio",style:
              TextStyle(
                fontSize: 25
              ),),
          ),
          color: Colors.blue.shade100,
        ),
      ),
    ),
    SizedBox(
      height: 20,
    ),
    Container(
      color: Colors.blue.shade100,
      height: 300,
      width: 300,
      child: FractionallySizedBox(
        widthFactor: 0.8,
        heightFactor: 0.8,
        child: Container(
          color: Colors.pink.shade100,
          child: Center(
            child: Text("This is my home",
              style: TextStyle(fontSize: 25),),
          ),
        ),
      ),
    ),

   SizedBox(height: 10,),
    Center(
      child: Stack(
        children: [
          Positioned(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.pink.shade300,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          
          Positioned(
            right: 20,
            bottom: 20,
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.purple.shade100,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Positioned(
            child: Container(
              height: 100,
              width: 100,
              child: Center(
                child: Text("Hellow"),
              ),
              decoration: BoxDecoration(
                color: Colors.amber.shade200,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          )
        ],
      ),
    )

  ],
),
    );
  }
}

