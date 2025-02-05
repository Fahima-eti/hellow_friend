

import 'package:flutter/material.dart';

class TestExam extends StatelessWidget {
  const TestExam({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade400,
        title: Text("Add Employee",style: TextStyle(
          fontSize: 30
        ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Name",hintStyle: TextStyle(
                fontSize: 20
              )
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Age",hintStyle: TextStyle(
                  fontSize: 20
              )
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Salary",hintStyle: TextStyle(
                  fontSize: 20
              )
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(40,50)
                ),
                child: Text("Add Employee",style: TextStyle(
                  fontSize: 23,color: Colors.teal
                ),))
          ],
        ),
      ),
    );
  }
}

