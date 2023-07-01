// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutterdesign/views/cargo_view.dart';
import 'package:flutterdesign/views/drinkStore_view.dart';
import 'package:flutterdesign/views/finance_home_view.dart';
import 'package:flutterdesign/views/login_view.dart';
import 'package:flutterdesign/views/mailBox_view.dart';
import 'package:flutterdesign/views/notification_view.dart';
import 'package:flutterdesign/views/social_view.dart';
import 'package:flutterdesign/views/sport_view.dart';
import 'package:flutterdesign/views/sub_view.dart';
import 'package:flutterdesign/views/todo_view.dart';
import 'package:flutterdesign/views/videoCall_view.dart';
import 'package:flutterdesign/views/welcome_view.dart';

import 'views/not_found_view.dart';
// import 'package:flutterdesign/views/cargo_view.dart';
// import 'package:flutterdesign/views/social_view.dart';
// import 'package:flutterdesign/views/login_view.dart';
// import 'package:flutterdesign/views/todo_view.dart';

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
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SubView(),
    );
  }
}
