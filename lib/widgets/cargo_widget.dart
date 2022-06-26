import 'package:flutter/material.dart';

class CargoWidget extends StatefulWidget {
  const CargoWidget({Key? key}) : super(key: key);

  @override
  _CargoWidgetState createState() => _CargoWidgetState();
}

class _CargoWidgetState extends State<CargoWidget> {
  int dateValue = 0;
  int loaderValue = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 250,
            decoration: const BoxDecoration(
                color: Color(0xff2C2891),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "YoKargo",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Aşağıdan kargo \ndetaylarını giriniz",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "- 3 metre uzunluk",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "- 10 ton kapasite",
                        style: TextStyle(color: Colors.grey,),
                      ),
                    ],
                  ),
                  Image.network(
                    "https://cdn-icons-png.flaticon.com/512/296/296193.png",
                    height: 200,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Tarih seçin",
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              dateButton("2 şubat çarşamba", 1),
              dateButton("3 şubat perşembe", 2)
            ],
          ),
          const SizedBox(height: 15,),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Kaç yükleyici ihtiyacın var",
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              loaderButton("1", 1),
              loaderButton("2", 2),
              loaderButton("+", 3)
            ],
          ),
          const SizedBox(height: 15,),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Kargo hakkında kısa bilgi",
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
          ),
          const Padding(  
                  padding: EdgeInsets.all(8),  
                  child: TextField(  
                    obscureText: true,
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),  
                      labelText: "Kısa bilgi",  
                    ),  
                  ),  
                ),
        ],
      ),
    );
  }

  Widget dateButton(String text, int index) {
    return OutlinedButton(
      onPressed: () {
        setState(() {
          dateValue = index;
        });
      },
      child: Text(
        text,
        style: TextStyle(
          color: (dateValue == index) ? Colors.black : Colors.grey,
        ),
      ),
    );
  }

  Widget loaderButton(String text, int index) {
    return OutlinedButton(
      onPressed: () {
        setState(() {
          loaderValue = index;
        });
      },
      child: Text(
        text,
        style: TextStyle(
          color: (loaderValue == index) ? Colors.black : Colors.grey,
        ),
      ),
    );
  }
}
