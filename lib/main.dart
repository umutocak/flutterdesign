import 'package:flutter/material.dart';
// import 'package:flutterdesign/views/login_view.dart';
import 'package:flutterdesign/views/todo_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Design Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  const ToDoWiew(),
    );
  }
}

