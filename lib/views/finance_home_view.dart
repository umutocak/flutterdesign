import 'package:flutter/material.dart';

class FinanceHomeView extends StatelessWidget {
  const FinanceHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0, backgroundColor: Colors.transparent, elevation: 0,),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Good morning', style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.grey),),
                    const SizedBox(height: 10,),
                    Text('Umut Ocak', style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),)
                  ],
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xff14279B),
                    borderRadius: BorderRadius.circular(90)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(3),
                    child: CircleAvatar(backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/48753655?v=4')),
                  ),
                )
              ],
            ),
            const SizedBox(height: 30,),
            Container(
              width: MediaQuery.of(context).size.width - 90,
              height: 150,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                color: Color(0xffEFEFEF)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Mastercard-logo.svg/772px-Mastercard-logo.svg.png", width: 50, height: 50,)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Umut Ocak', style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),),
                          Text('641', style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 90,
              height: 80,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                color: Color(0xff14279B)
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Num', style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.grey),),
                        const SizedBox(height: 5,),
                        Text('**** **** 7223', style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white))
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Exp', style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.grey),),
                        const SizedBox(height: 5,),
                        Text('07/25', style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white))
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}