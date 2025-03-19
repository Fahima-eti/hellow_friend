import 'package:flutter/material.dart';

import '../Project/RecipeBook.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  final List<Map<String,String>> foodItem = [
    {"name":"Mutton curry","image":"https://www.shutterstock.com/shutterstock/photos/2209328335/display_1500/stock-photo-mutton-curry-isolated-on-white-background-2209328335.jpg"},
    {"name":"Pabda fish","image":"https://media.istockphoto.com/id/2171441914/photo/pabda-fish-curry-is-a-traditional-bengali-dish-featuring-tender-pabda-fish-simmered-in-a.jpg?s=1024x1024&w=is&k=20&c=I7omZDM2KF52an7yvogqgx6mwYuOQsongNbdAbEk4Ig="},
    {"name":"Chicken curry","image":"https://media.istockphoto.com/id/1531676916/photo/spicy-chicken-curry-top-view-whole-spices.jpg?s=1024x1024&w=is&k=20&c=L_tX_tJwBCBNftzsZbWOKQ1idZmR2Y572JL8tGJCK9c="},
    {"name":"Mishty doi","image":"https://media.istockphoto.com/id/1318678348/photo/mishti-doi.jpg?s=1024x1024&w=is&k=20&c=EWES2XmtiGmS-mDjOldUGEt2l0TuOcOf86a7-qjR-zU="},
    {"name":"Custard","image":"https://pipingpotcurry.com/wp-content/uploads/2023/10/Fruit-Custard-Piping-Pot-Curry.jpg"},
    {"name":"Gulab jamun","image":"https://media.istockphoto.com/id/1995331038/photo/malai-gulab-jamun-gulab-jamun-sandwich-with-milk-cream-filling-fusion-of-indian-sweet-dessert.jpg?s=1024x1024&w=is&k=20&c=M4gElWTRco7SCj6_W3TYdwQJ98q7NLualt_ZnfXyOV4="},
    {"name":"Chocolate cake","image":"https://www.shutterstock.com/image-photo/piece-chocolate-cake-mint-on-260nw-343150034.jpg"},
    {"name":"Momos","image":"https://media.gettyimages.com/id/503908259/photo/momos-or-dumplings-at-kungas.jpg?s=612x612&w=gi&k=20&c=vcy3aT85BT1OnVGSSUvZiHHb9Rfec9wDtZ1XXwLUp4I="},
    {"name":"Luchi","image":"https://media.gettyimages.com/id/1313706654/photo/close-up-of-food-in-plate-on-table-kolkata-west-bengal-india.jpg?s=612x612&w=gi&k=20&c=YWy9Fngcjhd3ZUrQNpYXwBYkf60oTYpna4R7fIP3SzI="},
    {"name":"Jalebi","image":"https://media.gettyimages.com/id/2161832292/photo/jalebi-is-a-very-popular-sweet-snack-in-south-and-west-asia-africa-and-mauritius-it-goes-by.jpg?s=612x612&w=0&k=20&c=iLTL3UEbqpsVixwzNx7wFZn8LrXXjlEk8z06gOKpn6c="},
  ];

  void _navigatetopage(BuildContext context,Widget page){
    Navigator.push(context,
        MaterialPageRoute(builder: (context)=>page));

  }
  @override
  Widget build(BuildContext context) {

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
      body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
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
           SizedBox(height:20),
           Text("Categories",style: TextStyle(
             fontStyle: FontStyle.italic,fontSize: 25
           ),),
           SizedBox(height: 15,),
           Container(
             height: MediaQuery.of(context).size.height*0.5,
             child: SingleChildScrollView(
               child: GridView.builder(
                 shrinkWrap: true,
                   physics: NeverScrollableScrollPhysics(),
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                       crossAxisCount: 2,
                   mainAxisSpacing: 10,crossAxisSpacing: 10
                   ),
                   itemCount: foodItem.length,
               
                   itemBuilder: (context,index) {
                   return  Container(
                       decoration: BoxDecoration(
                         color: Colors.lime,
                         borderRadius: BorderRadius.circular(20),
                       ),
                       width: 200,
                       height: 300,
                       child: Column(
                         children: [
                           SingleChildScrollView(
                            child:ClipRRect(
                                child: Image.network(foodItem[index]["image"]!,fit: BoxFit.cover,),
                            ),
                           ),
                           SizedBox(height: 10,),
                           Text(foodItem[index]["name"]!,style: TextStyle(
                               fontSize: 20,fontStyle: FontStyle.italic
                           ),)
                         ],
                       ),
                   );
                   } ),
           )

           )])),
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
}


