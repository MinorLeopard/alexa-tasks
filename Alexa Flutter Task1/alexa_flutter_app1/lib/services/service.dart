import 'package:alexa_flutter_app1/models/task_model.dart';

class Service {
  static final List<Task> _tasks = List.empty(growable: true);
  static List<Task> get tasks => _tasks;
  void addTask({
    required String title,
  }) {
    _tasks.add(Task(title: title));
  }

  void removeTask({required Task task}) {
    _tasks.remove(task);
  }
}
