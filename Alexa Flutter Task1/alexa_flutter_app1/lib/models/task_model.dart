class Task {
  final String title;
  Task({
    required this.title,
  });
  factory Task.fromJson({required Map<String, dynamic> data}) =>
      Task(title: data['title'] as String);
}
