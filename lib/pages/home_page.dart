import 'package:assignment2/utils/todo_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('My Todo', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: ListView(
        children: [
          TodoList(),
          TodoList(),
          TodoList(),
          TodoList(),
          TodoList(),
          TodoList(),
          TodoList(),
          TodoList(),
        ],
      ),
    );
  }
}
