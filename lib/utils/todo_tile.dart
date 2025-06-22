import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Text('Testing todo'),
        decoration: BoxDecoration(color: Colors.white),
      ),
    );
  }
}
