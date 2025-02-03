import 'package:flutter/material.dart';


class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
 double ScreenHeight = MediaQuery.of(context).size.height;
 double ScreenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        
      ),
      body:Column(
        children: [
          Container(
            height: ScreenHeight*0.4,
            width: ScreenWidth,
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
            ),
child: Column(
 children: [
   Text("Where are you going?",style: TextStyle(fontSize: 35,color: Colors.white),)

 ],
),
          )
        ],
      )
    );
  }
}

class ImagePart extends StatelessWidget {
  const ImagePart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:AppBar(
      title:Text("ImagePart"),
      centerTitle: true,
    ),
      body:SingleChildScrollView(
            child: Column(
              children: [
              Image.network("https://media.istockphoto.com/id/2170790699/photo/a-christmas-tree-ornament-with-a-glass-ball-inside-of-it.jpg?s=1024x1024&w=is&k=20&c=0eHE_Ma2Tz-GtLuc4OELW_ZwAIUS5s35Sc-Tim4xLLs="),
            Image.asset("asset/preview.jpg"),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.pink.shade100,
                  child: Center(
                    child: Text("Hellow World",
                    style: TextStyle(fontSize: 20,color: Colors.blue),),
                  ),
                )


              ],
            ),
          )
    );
  }
}
