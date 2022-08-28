import 'package:flutter/material.dart';

class SocialViews extends StatefulWidget {
  const SocialViews({Key? key}) : super(key: key);

  @override
  _SocialViewsState createState() => _SocialViewsState();
}

class _SocialViewsState extends State<SocialViews> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff7A57D1),
          shadowColor: Colors.transparent,
          bottom: const TabBar(
          tabs: [
            Tab(text: "Home",),
            Tab(text: "Hot",),
            Tab(text: "Trending",),
            Tab(text: "Fresh",),
          ],
          indicatorColor: Colors.white,
        ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              getStarted(),
              const SizedBox(
                height: 20,
              ),
              post(),
            ],
          ),
        ),
        backgroundColor: const Color(0xffEFEFEF),
      ),
    );
  }

  Widget getStarted() {
    return Container(
      height: 200,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Sevgili Umut, Hoşgeldin",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                const SizedBox(
                  height: 15,
                ),
                const SizedBox(
                    width: 200,
                    child: Text(
                      "Arkadaşlarının neler yaptığını hızlıca öğren !",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    )),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    onPressed: () {
                      // Respond to button press
                    },
                    child: const Text('Get Started'),
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xff7A57D1)),
                        shadowColor: MaterialStateProperty.all<Color>(
                            Colors.transparent)))
              ],
            ),
            Image.network(
              "https://ouch-cdn2.icons8.com/BLXhROAfuBiUkdLAWvn_-xv5At6Ed27ytLuwkU8oRXk/rs:fit:256:201/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvMzYw/LzllNDY2ODljLTA5/ZWMtNGFiYS1hYzQ3/LWViMDVjOGM5NDdl/OC5wbmc.png",
              height: 120,
            )
          ],
        ),
      ),
    );
  }

  Widget post() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.transparent,
                      child: ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(28.0),
                          child: Image.network(
                            "https://media-exp1.licdn.com/dms/image/C4D03AQF7vXsafG8YHA/profile-displayphoto-shrink_200_200/0/1549611316615?e=1648080000&v=beta&t=_OFjfkM4niiaO7vgKbQHV4XtUuj8avcO7QUnv8u3hLE",
                          ),
                        ),
                        title: const Text(
                          "Umut Ocak",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Text("Yazılım mühendisi"),
                        trailing: const Icon(Icons.more_vert),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: const Text(
                        "@umutocakcom ve @yazilimoji sayfalarımı takip eder misin ?",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    const Divider(thickness: 1,),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        Row(
                          children: [
                            Image.network("https://ouch-cdn2.icons8.com/4xCcNtcdKiveBLq9nkEXoyEQS9CamS1_gJ0J2RukPM0/rs:fit:256:237/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvMzA2/L2FlZjM3Zjc5LWE3/YWYtNDJjYi1hMWRl/LWE1MDZjODc2MzIw/NC5zdmc.png", width: 30, height: 30,),
                            const SizedBox(width: 5,),
                            const Text("50", style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                        const SizedBox(width: 20,),
                        Row(
                          children: [
                            Image.network("https://ouch-cdn2.icons8.com/QY_O_eOq4vXrJF3Z46AeEdJkj8raW8kmMzsQFmW0YSw/rs:fit:256:256/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvNzIx/LzU0Mjg5YzM2LTM4/NGYtNGRhOC1iNDI5/LWUzMzgyNDJmZDU2/ZS5zdmc.png", width: 30, height: 30,),
                            const SizedBox(width: 5,),
                            const Text("20", style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                        const SizedBox(width: 20,),
                        Row(
                          children: [
                            Image.network("https://ouch-cdn2.icons8.com/6D8blF_wWQNwP9UKA60JQuD6y1zDknmMxK7koPRp4lI/rs:fit:256:247/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvNTY0/L2Q2NmQxMWNiLWQ0/YjQtNGU0Ni05YzVi/LTY1NDQ0Yjg1ODY5/NS5zdmc.png", width: 30, height: 30,),
                            const SizedBox(width: 5,),
                            const Text("90", style: TextStyle(color: Colors.grey),),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,),
          ],
        );
      },
    );
  }
}
