import 'package:flutter/material.dart';

class SportView extends StatefulWidget {
  const SportView({ Key? key }) : super(key: key);

  @override
  State<SportView> createState() => _SportViewState();
}

class _SportViewState extends State<SportView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const[
                      Text("Hi Umut", style: TextStyle(fontWeight:FontWeight.bold, fontSize: 20, color: Colors.black)),
                      Text("Don't miss the fitness", style: TextStyle(color: Colors.grey, fontSize: 15)),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(90),
                    child: Image.network("https://yt3.ggpht.com/ytc/AKedOLST1UNKxQWcfC-1PZF4f0Qx-1DWcGWWhbUrdEgm=s600-c-k-c0x00ffffff-no-rj-rp-mo", width: 50, height: 50,),
                  )
                ],
              ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Practice", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  Text("All"),
                ],
              ),
              const SizedBox(height: 15,),
              Container(
                height: 120,
                decoration: const BoxDecoration(
                  color: Color(0xffDFF6FF),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("He Sat Down", style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("Amateur level"),
                          Text("15 Items", style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.network("https://cdn-icons-png.flaticon.com/512/2548/2548536.png", width: 80, height: 80,),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                height: 120,
                decoration: const BoxDecoration(
                  color: Color(0xffFFE4C0),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Muscle", style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("Intermediate level"),
                          Text("16 Items", style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.network("https://cdn-icons-png.flaticon.com/512/2548/2548537.png", width: 80, height: 80,),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                height: 120,
                decoration: const BoxDecoration(
                  color: Color(0xffF0F0F0),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Warm-Up Exercises", style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("Professional level"),
                          Text("15 Items", style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.network("https://cdn-icons-png.flaticon.com/512/763/763812.png", width: 80, height: 80,),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                height: 120,
                decoration: const BoxDecoration(
                  color: Color(0xffDFF6FF),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("He Sat Down", style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("Amateur level"),
                          Text("15 Items", style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.network("https://cdn-icons-png.flaticon.com/512/2548/2548536.png", width: 80, height: 80,),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                height: 120,
                decoration: const BoxDecoration(
                  color: Color(0xffFFE4C0),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Muscle", style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("Intermediate level"),
                          Text("16 Items", style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.network("https://cdn-icons-png.flaticon.com/512/2548/2548537.png", width: 80, height: 80,),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                height: 120,
                decoration: const BoxDecoration(
                  color: Color(0xffF0F0F0),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Warm-Up Exercises", style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("Professional level"),
                          Text("15 Items", style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.network("https://cdn-icons-png.flaticon.com/512/763/763812.png", width: 80, height: 80,),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}