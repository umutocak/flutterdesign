import 'package:flutter/material.dart';
import 'package:flutterdesign/widgets/todo_widget.dart';

class ToDoWiew extends StatefulWidget {
  const ToDoWiew({ Key? key }) : super(key: key);

  @override
  _ToDoWiewState createState() => _ToDoWiewState();
}

class _ToDoWiewState extends State<ToDoWiew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: const Text("My To Do", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),),
        centerTitle: false,
      ),
      body: const ToDoWidget(),
    );
  }
}