import 'package:flutter/material.dart';

class SubView extends StatefulWidget {
  const SubView({Key? key}) : super(key: key);

  @override
  State<SubView> createState() => _SubViewState();
}

class _SubViewState extends State<SubView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff111214),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: Container(
          decoration: const BoxDecoration(border: Border(bottom: BorderSide(width: 0.5, color: Color(0xff18191B)))),
          child: AppBar(
            backgroundColor: Colors.transparent,
            title: const Text("Suboloji", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
            centerTitle: false,
            elevation: 0,
            actions: [IconButton(icon: const Icon(Icons.notifications, color: Colors.white), onPressed: () => print("Add"))],
          ),
        ),
      ),
      body: DefaultTabController(
        length: 5,
        child: NestedScrollView(
          headerSliverBuilder: (context, _) {
            return [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    SizedBox(
                      height: 200,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "157,00",
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 35),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Avg. Expenses each Month",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ];
          },
          body: Column(
            children: [
              const Material(
                color: Colors.transparent,
                child: TabBar(
                  isScrollable: true,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Color(0xff5C6C9F),
                  tabs: [
                    Tab(text: "All Subs"),
                    Tab(text: "Work"),
                    Tab(text: "Fun"),
                    Tab(
                      icon: Icon(Icons.edit),
                    )
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [subDetailWidget(), subDetailWidget(), subDetailWidget(), subDetailWidget()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget subDetailWidget() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Column(
          children: [
            const SizedBox(height: 15,),
            ListTile(
              leading: Image.network(
                  "https://static.vecteezy.com/system/resources/previews/018/930/750/non_2x/spotify-app-logo-spotify-icon-transparent-free-png.png"),
              title: const Text("Spotify", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              subtitle: const Text("#fun", style: TextStyle(color: Colors.grey)),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  RichText(
                    text: const TextSpan(
                      text: '10',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(text: '/Month', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      text: 'Due: ',
                      style: TextStyle(color: Colors.grey),
                      children: [
                        TextSpan(text: 'Tomorrow', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(color: Color(0xff18191B),)
          ],
        );
      },
    );
  }
}
