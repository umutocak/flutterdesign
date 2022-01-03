import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutterdesign/widgets/todo_widget.dart';
import 'package:iconsax/iconsax.dart';

class ToDoWiew extends StatefulWidget {
  const ToDoWiew({Key? key}) : super(key: key);

  @override
  _ToDoWiewState createState() => _ToDoWiewState();
}

class _ToDoWiewState extends State<ToDoWiew> {
  final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdropColor: Colors.grey.shade900,
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      disabledGestures: false,
      childDecoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade900,
            blurRadius: 20.0,
            spreadRadius: 5.0,
            offset: const Offset(-20.0, 0.0),
          ),
        ],
        borderRadius: BorderRadius.circular(30),
      ),
      drawer: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 20),
          child: ListTileTheme(
            textColor: Colors.white,
            iconColor: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: 80.0,
                    height: 80.0,
                    margin: const EdgeInsets.only(
                      left: 20,
                      top: 24.0,
                    ),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      shape: BoxShape.circle,
                    ),
                    child: Image.network('https://cdn.pixabay.com/photo/2016/11/29/06/46/adult-1867889_1280.jpg')),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Umut Ocak",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600, fontSize: 22),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Software developer",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w300, fontSize: 15),
                  ),
                ),
                const Spacer(),
                Divider(
                  color: Colors.grey.shade800,
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Iconsax.home),
                  title: const Text('To Do List'),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Iconsax.chart_2),
                  title: const Text('Planned'),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Iconsax.profile_2user),
                  title: const Text('Assigned to me'),
                ),
                const SizedBox(
                  height: 50,
                ),
                Divider(color: Colors.grey.shade800),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Iconsax.setting_2),
                  title: const Text('Settings'),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Iconsax.support),
                  title: const Text('Support'),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Version 1.0.0',
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          leading: IconButton(
              color: Colors.black,
              onPressed: _handleMenuButtonPressed,
              icon: ValueListenableBuilder<AdvancedDrawerValue>(
                valueListenable: _advancedDrawerController,
                builder: (_, value, __) {
                  return AnimatedSwitcher(
                    duration: const Duration(milliseconds: 250),
                    child: Icon(
                      value.visible ? Iconsax.close_square : Iconsax.menu,
                      key: ValueKey<bool>(value.visible),
                    ),
                  );
                },
              )),
          title: const Text(
            "My To Do",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          centerTitle: false,
        ),
        body: const ToDoWidget(),
      ),
    );
  }

  void _handleMenuButtonPressed() {
    _advancedDrawerController.showDrawer();
  }
}
