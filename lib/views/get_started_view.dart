import 'package:flutter/material.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage("https://cdn.pixabay.com/photo/2017/02/16/12/18/business-woman-2071349_1280.jpg"), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.white),
              width: MediaQuery.of(context).size.width,
              height: 500,
              child: Column(
                children: [
                  const SizedBox(height: 140),
                  const Text("Shape your future with job opportunitues",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22), textAlign: TextAlign.center),
                  const SizedBox(height: 15),
                  const Text("Discover a vast selection of over 30,000 job opportunitues to superchange your career path today",
                      style: TextStyle(color: Colors.grey), textAlign: TextAlign.center),
                  const SizedBox(height: 60,),
                  Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width - 150,
                    decoration: BoxDecoration(color: const Color(0xff206A5D), borderRadius: BorderRadius.circular(15)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(child: Text("Get Started", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
