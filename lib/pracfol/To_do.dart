import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/to_do_list.dart';

class MyTodoList extends StatefulWidget {
  const MyTodoList({super.key});

  @override
  State<MyTodoList> createState() => _MyTodoListState();
}

class _MyTodoListState extends State<MyTodoList> {
  Future<List<ToDoList>> getTodo() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/todos'),
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString()) as List;
      // Convert JSON → List<ToDoList>
      return data.map((e) => ToDoList.fromJson(e)).toList();
    } else {
      throw Exception("Failed to load todos");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Todo List")),
      body: FutureBuilder<List<ToDoList>>(
        future: getTodo(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // 🔄 Loading state
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            // ⚠️ Error state
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (snapshot.hasData) {
            // ✅ Success state
            final todos = snapshot.data!;
            return ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                final todo = todos[index];
                return ListTile(
                  leading: Text(todo.id.toString()),
                  title: Text(todo.title),
                  trailing: Icon(
                    todo.completed ? Icons.check_circle : Icons.pending,
                    color: todo.completed ? Colors.green : Colors.grey,
                  ),
                );
              },
            );
          } else {
            return const Center(child: Text("No data found"));
          }
        },
      ),
    );
  }
}
