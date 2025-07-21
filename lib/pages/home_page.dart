import 'package:assignment2/utils/dialog_box.dart';
import 'package:assignment2/utils/todo_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Text editing controller for the dialog box
  final TextEditingController _controller = TextEditingController();

  // List of todo tasks
  List toDo = [
    ['Make a todo app', false],
    ['Learn Flutter', false],
  ];

  // Checkbox was tapped
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDo[index][1] = !toDo[index][1];
    });
  }

  // Save new task function
  void saveNewTask() {
    setState(() {
      toDo.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  //Cancel task function
  void cancelTask() {
    _controller.clear();
    Navigator.of(context).pop();
  }

  // Create new task function
  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: saveNewTask,
          onCancel: cancelTask,
        );
      },
    );
  }

  // Edit existing task function
  void editTask(int index) {
    _controller.text = toDo[index][0];
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: () => saveEditedTask(index),
          onCancel: cancelTask,
        );
      },
    );
  }

  // Save edited task function
  void saveEditedTask(int index) {
    setState(() {
      toDo[index][0] = _controller.text;
      _controller.clear();
    });
    Navigator.of(context).pop();
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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: createNewTask,
        backgroundColor: Colors.deepPurple,
        icon: const Icon(Icons.add, color: Colors.white, size: 24),
        label: const Text(
          'Add New Task',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),

      body: ListView.builder(
        itemCount: toDo.length,
        itemBuilder: (context, index) {
          return TodoList(
            taskName: toDo[index][0],
            taskCompleted: toDo[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            onDelete: () {
              setState(() {
                toDo.removeAt(index);
              });
            },
            onEdit: () => editTask(index),
          );
        },
      ),
    );
  }
}
