import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  List<Map<String, dynamic>> tasks = [];
  bool showActiveTask = true;

  void _addTask(String task) {
    if (task.trim().isEmpty) return; // Prevent empty tasks

    setState(() {
      tasks.add({
        "task": task,
        "completed": false, // Set to false instead of true
      });
    });
    Navigator.pop(context);
  }

  void _toggleTask(int index) {
    setState(() {
      tasks[index]["completed"] = !tasks[index]["completed"];
    });
  }

  void _removeTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }

  int get activeCount => tasks.where((task) => !task["completed"]).length;
  int get completedCount => tasks.where((task) => task["completed"]).length;

  void _showTaskDialog({int? index}) {
    TextEditingController _taskController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Add Task"),
        content: TextField(
          controller: _taskController, // Assign controller
          decoration: const InputDecoration(hintText: "Enter Task"),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
            onPressed: () => _addTask(_taskController.text),
            child: const Text("Save"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          "Todo Screen",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildTaskCounter("Active", activeCount),
              _buildTaskCounter("Completed", completedCount),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: UniqueKey(),
                  background: _buildDismissibleBackground(
                      Colors.green, Icons.check, Alignment.centerLeft),
                  secondaryBackground: _buildDismissibleBackground(
                      Colors.red, Icons.delete, Alignment.centerRight),
                  onDismissed: (direction) {
                    if (direction == DismissDirection.startToEnd) {
                      _toggleTask(index);
                    } else {
                      _removeTask(index);
                    }
                  },
                  child: Card(
                    child: ListTile(
                      title: Text(
                        tasks[index]["task"],
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.blue,
                          decoration: tasks[index]["completed"]
                              ? TextDecoration.lineThrough
                              : null,
                        ),
                      ),
                      leading: Checkbox(
                        value: tasks[index]["completed"],
                        onChanged: (value) => _toggleTask(index),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.edit, color: Colors.blueAccent),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showTaskDialog,
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildTaskCounter(String title, int count) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 5)],
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            count.toString(),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ],
      ),
    );
  }

  Widget _buildDismissibleBackground(
      Color color, IconData icon, Alignment alignment) {
    return Container(
      color: color,
      alignment: alignment,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Icon(icon, size: 27, color: Colors.white),
    );
  }
}