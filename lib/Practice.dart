import 'package:flutter/material.dart';

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
 final List<String>_task =[];
  TextEditingController _taskController = TextEditingController();

  int? get index => null;

  addTask(){
    String task = _taskController.text;
    if(_taskController.text.isNotEmpty){
      setState(() {
        _task.add(task);
        _taskController.clear();
      });
    }
  }
  removeTask(int index){
    setState(() {
      _task.removeAt(index);
    });
  }
 /* DialogBox(){
    showDialog(context: context,
        builder: (BuildContext context) {
      return AlertDialog(
        title: Text("confirmation"),content:
        Text("Task is finished"),
        actions: [
          TextButton(onPressed: () {
            Navigator.of(context).pop();
          } , child: Text("Cancel")),
          TextButton(onPressed: () {
            removeTask(int index);
          }, child: child)
        ],
      );
        }
      );
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("To Do List",style: TextStyle(
          fontSize: 30,color: Colors.white
        ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              controller: _taskController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter your task here",hintStyle: TextStyle(
                fontSize: 25,
              ),
                labelText: "Task",labelStyle: TextStyle(
                fontSize: 25
              ),
                suffixIcon: IconButton(onPressed: (){
             addTask();
                }, icon: Icon(Icons.add,size: 25,))
              ),
            ),
            SizedBox(
              height:15
            ),
           
            Expanded(
                child:ListView.builder(
             itemCount: _task.length,
                    itemBuilder: (context,index){
               return ListTile(
                   title: Text(_task[index],style: TextStyle(
                     fontSize: 25,
                   ),),
                 trailing: IconButton(onPressed: (){
                   removeTask(index);
                 }, icon: Icon(Icons.delete,size: 30,color: Colors.red,)),

               );
                    }) )
          ],
        ),
      ),
    );
  }
}
