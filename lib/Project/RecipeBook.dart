import 'package:flutter/material.dart';

import '../Practice.dart';
import '../ProjectController/Recipe2nd part.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  void _navigatepage(BuildContext context,Widget page){
  Navigator.push(context,
      MaterialPageRoute(builder: (context)=>page));
    
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade100,
      appBar: AppBar(
        backgroundColor: Colors.lime.shade700,
        title: Text("Bhojon Bari",style: TextStyle(
          fontSize: 28,fontWeight: FontWeight.w600,
            fontStyle:FontStyle.italic,
        ),),
        centerTitle: true,
      ),
body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    SizedBox(height: 4,),
    Text("Good food, good life",style: TextStyle(
      fontSize: 25,fontStyle: FontStyle.italic
    ),),
    Center(
                child: Container(
                  height: 400,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.lime.shade300,
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(blurRadius: 4,color: Colors.lime.shade500)
                    ]
                  ),
                  child: ClipRRect(
                    child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgdDPwJh3hd3ATZOh3dL4_K_p9qQR5vQ4GhQ&s"),
                  ),
                ),
        ),
    SizedBox(height: 10,),
    ElevatedButton(onPressed: (){
      Navigator.push(context,
          MaterialPageRoute(builder: (context)=>Homepage()));
    },
        child:Text("Go ahead",style:TextStyle(
          fontStyle: FontStyle.italic,fontSize: 20,
        ) ,)),

  ],
),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        backgroundColor: Colors.lime.shade700,
          selectedItemColor: Colors.lime.shade700,
          unselectedItemColor: Colors.blueGrey,
          items:[BottomNavigationBarItem(
              icon:Icon(Icons.home,),label:"Home" ),

    BottomNavigationBarItem(
    icon:Icon(Icons.menu,),label:"Menu" ),

    BottomNavigationBarItem(
    icon:Icon(Icons.local_dining,),label:"Dining" ),

    BottomNavigationBarItem(
    icon:Icon(Icons.food_bank,),label:"Ingredients" ),

     ] ,
      onTap: (int index){
          if(index == 1){
_navigatepage(context,Homepage());
          }else if(index == 0){
            _navigatepage(context,Login());
          }
    },
      ),
    );
  }
}


/*class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  void _navigatetopage(BuildContext context,Widget page){
    Navigator.push(context,
        MaterialPageRoute(builder: (context)=>page));

  }
  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.yellow.shade100,
      appBar: AppBar(
        backgroundColor: Colors.lime.shade700,
        title: Text("Bhojon Bari",style: TextStyle(
          fontSize: 28,fontWeight: FontWeight.w600,
          fontStyle:FontStyle.italic,
        ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 4,),
            Text("All Item",style: TextStyle(
                fontSize: 25,
                fontStyle:FontStyle.italic)),
            SizedBox(height: 6,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height:250,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.lime.shade300,
                        borderRadius: BorderRadius.circular(60),
                        image: DecorationImage(
                            image: NetworkImage("https://img.freepik.com/free-photo/delicious-indian-food-tray-flat-lay_23-2148723508.jpg?t=st=1740833486~exp=1740837086~hmac=2e8b6a84bbe9f67945ed99bac3544979f4641516d3a208cea189d0ec586fb95e&w=1380"),
                            fit: BoxFit.cover
                        ),
                        boxShadow: [
                          BoxShadow(blurRadius: 4,color: Colors.lime.shade500)
                        ]
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height:250,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.lime.shade300,
                        borderRadius: BorderRadius.circular(60),
                        image: DecorationImage(
                            image: NetworkImage("https://img.freepik.com/free-photo/high-angle-indian-food-assortment_23-2148747704.jpg?t=st=1740833249~exp=1740836849~hmac=d2a355f81939143d8f1c16e1d22a909a68fcd11000f630d1282265eebba413b7&w=740"),
                            fit: BoxFit.cover
                        ),
                        boxShadow: [
                          BoxShadow(blurRadius: 4,color: Colors.lime.shade500)
                        ]
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height:250,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.lime.shade300,
                        borderRadius: BorderRadius.circular(60),
                        image: DecorationImage(image:
                        NetworkImage("https://img.freepik.com/free-photo/top-view-delicious-meat-soup-with-potatoes-greens-dark-blue-desk_140725-76548.jpg?t=st=1740833553~exp=1740837153~hmac=2bc88805ee52b3b697950a649e75fca2d5fc1a4f254375a84485d0f076974f79&w=1800"),
                            fit: BoxFit.cover),
                        boxShadow: [
                          BoxShadow(blurRadius: 4,color: Colors.lime.shade500)
                        ]
                    ),
                    // child: Image.network("https://img.freepik.com/free-photo/top-view-delicious-meat-soup-with-potatoes-greens-dark-blue-desk_140725-76548.jpg?t=st=1740833553~exp=1740837153~hmac=2bc88805ee52b3b697950a649e75fca2d5fc1a4f254375a84485d0f076974f79&w=1800",fit:BoxFit.cover,),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height:250,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.lime.shade300,
                        borderRadius: BorderRadius.circular(60),
                        image: DecorationImage(image:
                        NetworkImage("https://img.freepik.com/premium-photo/fried-sattu-litti-chokha-served-with-baingan-bharta-onion-pickle-popular-recipe-from-bihar-india_466689-1830.jpg?w=1800"),
                            fit: BoxFit.cover),
                        boxShadow: [
                          BoxShadow(blurRadius: 4,color: Colors.lime.shade500)
                        ]
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        backgroundColor: Colors.lime.shade700,
        selectedItemColor: Colors.lime.shade700,
        unselectedItemColor: Colors.blueGrey,
        items:[BottomNavigationBarItem(
            icon:Icon(Icons.home,),label:"Home" ),

          BottomNavigationBarItem(
              icon:Icon(Icons.menu,),label:"Menu" ),

          BottomNavigationBarItem(
              icon:Icon(Icons.local_dining,),label:"Dining" ),

          BottomNavigationBarItem(
              icon:Icon(Icons.food_bank,),label:"Ingredients" ),

        ] ,
        onTap: (int index){
          if(index == 1){
            _navigatetopage(context,Homepage());
          }else if(index == 0){
            _navigatetopage(context,Login());
          }
        },
      ),
    );
  }
}*/





