import 'package:flutter/material.dart';

class VideoCallView extends StatefulWidget {
  const VideoCallView({Key? key}) : super(key: key);

  @override
  State<VideoCallView> createState() => _VideoCallViewState();
}

class _VideoCallViewState extends State<VideoCallView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff146356),
          shadowColor: Colors.transparent,
          title: ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                "https://lh3.googleusercontent.com/a-/AOh14GhyuSro7TtmjORPTZpB_ei9OgmQSeac_wCsq7uK=s192-c-rg-br100",
                height: 40,
                width: 40,
              ),
            ),
            title: const Text("Umut Ocak", style: TextStyle(color: Colors.white),),
            subtitle: const Text("Software developer",style: TextStyle(color: Colors.white),),
          ),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children:  const[
                    CircleAvatar(
                      child: Icon(Icons.call),
                      backgroundColor: Color(0xff146356),
                    ),
                    SizedBox(width: 50,),
                    CircleAvatar(
                      child: Icon(Icons.call_end),
                      backgroundColor: Color(0xffB33030),
                    )
                  ],
                ),
              ],
            ),
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2021/08/31/11/58/woman-6588614_1280.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ));
  }
}
