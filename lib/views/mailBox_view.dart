import 'package:flutter/material.dart';

class MailBoxView extends StatefulWidget {
  const MailBoxView({ Key? key }) : super(key: key);

  @override
  State<MailBoxView> createState() => _MailBoxViewState();
}

class _MailBoxViewState extends State<MailBoxView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: ListTile(
          leading: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.grey,
              image: const DecorationImage(
                image: NetworkImage("https://cdn.pixabay.com/photo/2018/01/24/19/49/people-3104635_1280.jpg"),
                fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(10)
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("info@yazilimoji.com"),
              Container(
              height: 40,
              width: 40,
              child: const Icon(Icons.search, size: 20, color: Colors.black,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade300
              ),
            ),
            ],
          ),
          subtitle: const Text("Change mail", style: TextStyle(color: Colors.blue),),
        ),
        centerTitle: false,
      ),
      body: Column(),
    );
  }
}