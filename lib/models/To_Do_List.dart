import 'dart:convert';

List<ToDoList> toDoListFromJson(String str) => List<ToDoList>.from(json.decode(str).map((x) => ToDoList.fromJson(x)));

String toDoListToJson(List<ToDoList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ToDoList {
    int userId;
    int id;
    String title;
    bool completed;

    ToDoList({
        required this.userId,
        required this.id,
        required this.title,
        required this.completed,
    });

    factory ToDoList.fromJson(Map<String, dynamic> json) => ToDoList(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        completed: json["completed"],
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "completed": completed,
    };
}
