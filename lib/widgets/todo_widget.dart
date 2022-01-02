import 'package:flutter/material.dart';

class ToDoWidget extends StatefulWidget {
  const ToDoWidget({ Key? key }) : super(key: key);

  @override
  _ToDoWidgetState createState() => _ToDoWidgetState();
}

class _ToDoWidgetState extends State<ToDoWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children:[
            Card(
              color: Colors.transparent,
              shadowColor: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text("Welcome, Umut !", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:const [
                        Icon(Icons.add,color: Color(0xff5EAAA8),size: 27,)
                      ],
                    ),
                    const SizedBox(height: 15,),
                    Card(
                      color: const Color(0xffFE7E6D),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:const [
                                Text("Design",style: TextStyle(fontSize: 20, color: Colors.white),),
                                Icon(Icons.attachment_outlined, color: Colors.white,),
                                
                              ],
                            ),
                            const SizedBox(height: 15,),
                            Container(
                                  child: const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",style: TextStyle(letterSpacing: 1,color: Colors.white),),
                                  color: Colors.transparent,
                                  width: MediaQuery.of(context).size.width,
                                ),
                          ],
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      ),
                    ),
                    Card(
                      color: const Color(0xff781D42),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:const [
                                Text("Design",style: TextStyle(fontSize: 20, color: Colors.white),),
                                Icon(Icons.attachment_outlined, color: Colors.white,),
                                
                              ],
                            ),
                            const SizedBox(height: 15,),
                            Container(
                                  child: const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",style: TextStyle(letterSpacing: 1,color: Colors.white),),
                                  color: Colors.transparent,
                                  width: MediaQuery.of(context).size.width,
                                ),
                          ],
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}