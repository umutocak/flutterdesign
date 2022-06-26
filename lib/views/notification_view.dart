import 'package:flutter/material.dart';
import 'package:flutterdesign/widgets/notification_widget.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: const Text('Hareketler'),
        centerTitle: false,
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
        actions: const [
          Center(
              child: Padding(
            padding: EdgeInsets.only(right: 10),
            child: Text(
              'Filtrele',
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ))
        ],
      ),
      body: const NotificationWidget(),
    );
  }
}
