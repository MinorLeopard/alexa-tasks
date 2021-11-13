import 'package:flutter/material.dart';
import 'package:alexa_flutter_app1/services/service.dart';
class AddingTasks extends StatelessWidget {
  const AddingTasks({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const snackbar = SnackBar(
      duration: Duration(seconds: 3),
      content: Text("Task Added"),
    );
    TextEditingController text = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Task"),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Tasks"),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              controller: text,
              decoration: const InputDecoration(
                hintText: 'Add Task Name',
                labelText: 'Task',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
                onPressed: () {
                  Service().addTask(title: text.text);
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: const Text("Save Task")),
          )
        ],
      ),
    );
  }
}