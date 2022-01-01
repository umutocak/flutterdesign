import 'package:flutter/material.dart';
import 'package:flutterdesign/widgets/login_widget.dart';

class LoginViews extends StatefulWidget {
  const LoginViews({Key? key}) : super(key: key);

  @override
  _LoginViewsState createState() => _LoginViewsState();
}

class _LoginViewsState extends State<LoginViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: const LoginWidget(),
    );
  }
}
