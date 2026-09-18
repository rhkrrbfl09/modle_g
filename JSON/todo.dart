class Todo {
  final int id;
  final String title;
  final bool done;
  final String? priority;
  final String? dueDate;
  final List<String> tags;

  const Todo({
    required this.id,
    required this.title,
    required this.done,
    required this.priority,
    required this.dueDate,
    this.tags = const [],
  });

  factory Todo.fromJson(Map<String, dynamic> json) => Todo(
    id: json['id'] as int,
    title: json['title'] as String,
    done: json['done'] as bool,
    priority: json['priority'] as String?,
    dueDate: json['dueDate'] as String?,
    tags: (json['tags'] as List<String>? ?? [])
        .map((dynamic e) => e as String)
        .toList(),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'done': done,
    'priority': priority,
    'dueDate': dueDate,
    'tags': tags,
  };
}
