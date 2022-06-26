import 'package:flutter/material.dart';

class NotificationWidget extends StatefulWidget {
  const NotificationWidget({Key? key}) : super(key: key);

  @override
  State<NotificationWidget> createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
  var nameList = ['Yazilimoji', 'umut.ock', 'flutterdevtr', 'umutocakcom', 'mehmetKarahanlı', 'polat', 'cakir','elif','marazAli'];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ListTile(
                leading: Icon(
                  Icons.people,
                  color: Colors.black,
                  size: 40,
                ),
                title: Text(
                  'Para Kazanma ve Mağazalar',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Markalı içerik ve alışveriş'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Öncelik',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://instagram.fsaw2-3.fna.fbcdn.net/v/t51.2885-19/64818933_323019198626840_280036149781594112_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fsaw2-3.fna.fbcdn.net&_nc_cat=108&_nc_ohc=E82L8pcs2qgAX9eb6Qf&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT_RyqycxxO1uFLdEd9vbmZgTBobL-Ct0UubAzHIRRswoQ&oe=62BF9E57&_nc_sid=8fd12b'),
                ),
                title: Text('Yazilimoji ve 290 kişi Reels videonu beğendi'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Yeni',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: nameList.length,
                itemBuilder: (context, index) {
                  var name = nameList[index];
                  return Column(
                    children: [
                      ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://instagram.fsaw2-3.fna.fbcdn.net/v/t51.2885-19/64818933_323019198626840_280036149781594112_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fsaw2-3.fna.fbcdn.net&_nc_cat=108&_nc_ohc=E82L8pcs2qgAX9eb6Qf&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT_RyqycxxO1uFLdEd9vbmZgTBobL-Ct0UubAzHIRRswoQ&oe=62BF9E57&_nc_sid=8fd12b'),
                        ),
                        title: Text('$name seni takip etmeye başladı'),
                        trailing: Container(
                          width: 85,
                          height: 30,
                          child: const Center(
                            child: Text(
                              'Takip Et',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      );
  }
}