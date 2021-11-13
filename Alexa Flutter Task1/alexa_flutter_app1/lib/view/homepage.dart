import 'package:flutter/material.dart';
import 'package:alexa_flutter_app1/services/service.dart';

class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 5,centerTitle: true,title: Text("ToDo List"),),
       body: ListView.builder(
            itemCount:Service.tasks.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                subtitle: Text("Task ${index + 1}"),
                title: Text(Service.tasks[index].title),
                trailing: IconButton(
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    Service().removeTask(task: Service.tasks[index]);
                    setState(() {
                      Service.tasks;
                    });
                  },
                ),
          );
  }
       ));
}}