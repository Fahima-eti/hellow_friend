import 'dart:convert';

import 'package:flutter/material.dart';


class Module12 extends StatefulWidget {
  const Module12({super.key});

  @override
  State<Module12> createState() => _Module12State();
}

class _Module12State extends State<Module12> {
  List Users = [];

  get http => null;

  Future<void>fetchUsers ()async{
    final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
 print(response.statusCode);
 if(response.statusCode == 200){
   Users = jsonDecode(response.body);
 }else{
   throw Exception("This body is failed");
 }

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("User List",style: TextStyle(
          fontSize: 30,fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
      ),
      body: ListView.builder(
itemCount: 10,
          itemBuilder: (context,index){
  final user = Users[index];
  return Card(
    margin: EdgeInsets.all(10),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12)
    ),
    elevation: 4,
    child: ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.orange,
        child: Text(user["name"][0],style: TextStyle(color: Colors.white),),
      ),
      title: Text(user["name"],
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
    subtitle: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 4,),
        Text("UserName:${user["username"]}",style: TextStyle(color: Colors.grey),),
        Text("Website:${user["website"]}",style: TextStyle(color: Colors.grey),),
        Text("Email:${user["email"]}",style: TextStyle(color: Colors.grey),),
        Text("Phone:${user["phone"]}",style: TextStyle(color: Colors.grey),)
      ],
    ),
    ),
    
  );
          }),
    );
  }
}
