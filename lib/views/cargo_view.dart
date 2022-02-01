import 'package:flutter/material.dart';
import 'package:flutterdesign/widgets/cargo_widget.dart';

class CargoViews extends StatefulWidget {
  const CargoViews({ Key? key }) : super(key: key);

  @override
  _CargoViewsState createState() => _CargoViewsState();
}

class _CargoViewsState extends State<CargoViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff2C2891),
        shadowColor: Colors.transparent,

      ),
      backgroundColor: const Color(0xffEDEEF7),
      body: const CargoWidget(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff39A388),
        child: const Icon(Icons.car_repair_outlined,),
        onPressed: (){

        },
      ),
    );
  }
}