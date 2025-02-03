
import 'package:flutter/material.dart';

class Assignment extends StatefulWidget {
  const Assignment({super.key});

  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  List<Map<String,String>>_contacts =[];

  TextEditingController _nameController = TextEditingController();
  TextEditingController _numberController = TextEditingController();

addContact(){
  String name = _nameController.text;
  String number = _numberController.text;
  if(_nameController.text.isNotEmpty && _numberController.text.isNotEmpty){
    setState(() {
      _contacts.add({"name":name,"number":number});
      _nameController.clear();
      _numberController.clear();
    });
 }}
  deleteContact(int index){
    setState(() {
      _contacts.removeAt(index);
    });
  }
  deleteDialog(int index){
  showDialog(context: context,
      builder:( BuildContext context){
    return AlertDialog(
      title: Text("Confirmation"),content: Text("Are you sure for delete?"),
      actions: [
        TextButton(onPressed: (){
          Navigator.of(context).pop();
        }, child: Text("Cancel"),
        ), TextButton(onPressed: (){
          deleteContact(index);
          Navigator.of(context).pop();
        }, child: Icon(Icons.delete,size: 30,color: Colors.red,)),

      ],
    );
     },
  );
  }
  @override Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pink.shade500,
        title: Text("Contact List",style: TextStyle(
          fontSize: 30,color: Colors.black
        ),),
      centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  hintText: "Name",hintStyle: TextStyle(fontSize: 20),
                  prefixIcon: Icon(Icons.person,size: 30,color: Colors.pink,),
                  labelText: "Name",labelStyle: TextStyle(fontSize: 20),
                 // helperText: "Enter your name please",helperStyle: TextStyle(fontSize: 16),
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: _numberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Number",hintStyle: TextStyle(fontSize: 20),
                  prefixIcon: Icon(Icons.phone,size: 30,color: Colors.blue,),
                  labelText: "Number",labelStyle: TextStyle(fontSize: 20),
                 // helperText: "Enter your number please",helperStyle: TextStyle(fontSize: 16),
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(onPressed: addContact,
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(400, 50),
                    backgroundColor: Colors.blue.shade200,

                    textStyle: TextStyle(fontSize: 20,)
                  ),

                  child: Text("Add",style: TextStyle(color: Colors.black))),
           Expanded(
               child:ListView.builder(
                 itemCount: _contacts.length,
                   itemBuilder:(context,index){
                   return GestureDetector(
                   onLongPress: (){
                     deleteDialog(index);
                   },
                       child: ListTile(
                         leading: Icon(Icons.person,size: 35,color: Colors.pink,),
                         title: Text(_contacts[index]["name"]!,style: TextStyle(
                           fontSize: 25,color: Colors.pink.shade300
                         ),),
                       subtitle: Text(_contacts[index]["number"]!,style: TextStyle(
                         fontSize: 20
                       ),),
                         trailing: Icon(Icons.phone,color: Colors.blue,size: 35,),
                       ),
                     );
                   })
           )

            ],

          ),
        ),
      ),
    );
  }
}
