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
      backgroundColor: const Color.fromARGB(255, 20, 20, 20),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 20, 20, 20),
        title: Text(
          'My Todo',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          Padding(padding: const EdgeInsets.only(top: 16)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              'Remaining Tasks (8)',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          TodoList(
            taskName: 'Testing ToDo',
            taskCompleted: false,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
