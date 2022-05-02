// ignore_for_file: file_names

import 'package:flutter/material.dart';

class NotFoundView extends StatefulWidget {
  const NotFoundView({Key? key}) : super(key: key);

  @override
  State<NotFoundView> createState() => _NotFoundViewState();
}

class _NotFoundViewState extends State<NotFoundView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        centerTitle: true,
        title: const Text("404", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/24.png",
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width - 50,
              child: const Text(
                  "Aman dikkat ! Uzay boşluğunda bulunmayan bir datayı aradın.")),
          const SizedBox(height: 20,),
          SizedBox(
            width: MediaQuery.of(context).size.width - 50,
            child: OutlinedButton(
              onPressed: () {},
              child: const Text("Yeniden Ara"),
              style: OutlinedButton.styleFrom(
                primary: const Color(0xff7FB5FF),
              ),
            ),
          )
        ],
      ),
    );
  }
}
