import 'package:assignment2/utils/todo_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List toDo = [
    ['Make a todo app', false],
    ['Learn Flutter', false],
  ];

  // Checkbox changed function
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDo[index][1] = !toDo[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 20, 20),
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 20, 20, 20),
        title: Text(
          'My Todo',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.deepPurple,
        child: const Icon(Icons.add, color: Colors.white, size: 30),
      ),
      body: ListView.builder(
        itemCount: toDo.length,
        itemBuilder: (context, index) {
          return TodoList(
            taskName: toDo[index][0],
            taskCompleted: toDo[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
          );
        },
      ),
    );
  }
}
