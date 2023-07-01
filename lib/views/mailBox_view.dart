// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MailBoxView extends StatefulWidget {
  const MailBoxView({Key? key}) : super(key: key);

  @override
  State<MailBoxView> createState() => _MailBoxViewState();
}

class _MailBoxViewState extends State<MailBoxView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
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
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2018/01/24/19/49/people-3104635_1280.jpg"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10)),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("info@yazilimoji.com"),
              Container(
                height: 40,
                width: 40,
                child: const Icon(
                  Icons.search,
                  size: 20,
                  color: Colors.black,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade300),
              ),
            ],
          ),
          subtitle: const Text(
            "Change mail",
            style: TextStyle(color: Colors.blue),
          ),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                  width: 170,
                  child: Text(
                    "24 Unread mail in inbox",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  )),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      height: 35,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          // Respond to button press
                        },
                        label: const Text('Inbox'),
                        icon: const Icon(
                          Icons.inbox,
                          size: 15,
                        ),
                        style: ElevatedButton.styleFrom(
                          shadowColor: Colors.transparent, backgroundColor: const Color(0xff1259D0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: 35,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          // Respond to button press
                        },
                        label: const Text(
                          'Outbox',
                          style: TextStyle(color: Colors.grey),
                        ),
                        icon: const Icon(
                          Icons.outbox,
                          size: 15,
                          color: Colors.grey,
                        ),
                        style: ElevatedButton.styleFrom(
                          shadowColor: Colors.transparent, backgroundColor: const Color(0xffF8FAFB),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: 35,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          // Respond to button press
                        },
                        label: const Text(
                          'Promotions',
                          style: TextStyle(color: Colors.grey),
                        ),
                        icon: const Icon(
                          Icons.airplane_ticket,
                          size: 15,
                          color: Colors.grey,
                        ),
                        style: ElevatedButton.styleFrom(
                          shadowColor: Colors.transparent, backgroundColor: const Color(0xffF8FAFB),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: 35,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          // Respond to button press
                        },
                        label: const Text(
                          'Outbox',
                          style: TextStyle(color: Colors.grey),
                        ),
                        icon: const Icon(
                          Icons.outbox,
                          size: 15,
                          color: Colors.grey,
                        ),
                        style: ElevatedButton.styleFrom(
                          shadowColor: Colors.transparent, backgroundColor: const Color(0xffF8FAFB),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Today",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 15,
              ),
              ListTile(
                leading: Image.network(
                  "https://cdn-icons-png.flaticon.com/512/2111/2111368.png",
                  height: 40,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Linkedin job alerts",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "6:20 pm",
                      style: TextStyle(fontSize: 14),
                    )
                  ],
                ),
                subtitle: const Text("24+ new job for 'software engineer'"),
              ),
              ListTile(
                leading: Image.network(
                  "https://cdn-icons-png.flaticon.com/512/2111/2111368.png",
                  height: 40,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Linkedin job alerts",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "6:20 pm",
                      style: TextStyle(fontSize: 14),
                    )
                  ],
                ),
                subtitle: const Text("24+ new job for 'software engineer'"),
              ),
              ListTile(
                leading: Image.network(
                  "https://cdn-icons-png.flaticon.com/512/2111/2111368.png",
                  height: 40,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Linkedin job alerts",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "6:20 pm",
                      style: TextStyle(fontSize: 14),
                    )
                  ],
                ),
                subtitle: const Text("24+ new job for 'software engineer'"),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Yesterday",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 15,
              ),
              ListTile(
                leading: Image.network(
                  "https://cdn-icons-png.flaticon.com/512/2111/2111368.png",
                  height: 40,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Linkedin job alerts",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "6:20 pm",
                      style: TextStyle(fontSize: 14),
                    )
                  ],
                ),
                subtitle: const Text("24+ new job for 'software engineer'"),
              ),
              ListTile(
                leading: Image.network(
                  "https://cdn-icons-png.flaticon.com/512/2111/2111368.png",
                  height: 40,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Linkedin job alerts",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "6:20 pm",
                      style: TextStyle(fontSize: 14),
                    )
                  ],
                ),
                subtitle: const Text("24+ new job for 'software engineer'"),
              ),
              ListTile(
                leading: Image.network(
                  "https://cdn-icons-png.flaticon.com/512/2111/2111368.png",
                  height: 40,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Linkedin job alerts",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "6:20 pm",
                      style: TextStyle(fontSize: 14),
                    )
                  ],
                ),
                subtitle: const Text("24+ new job for 'software engineer'"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
