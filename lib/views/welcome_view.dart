import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({ Key? key }) : super(key: key);

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://images.unsplash.com/photo-1529651121800-01d45d421ec9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fG1vdW5hdGluc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60"),
          fit: BoxFit.cover,
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                const Text("Welcome", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32, color: Colors.white),),
                const SizedBox(height: 15,),
                const Text("The journey is your home. Explore the world with our travel app and get the feeling like your own home.", style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
                const SizedBox(height: 30,),
                SizedBox(
                  width: 270,
                  height: 35,
                  child: ElevatedButton.icon(
                    onPressed: (){

                    },
                    icon: SvgPicture.network("https://www.svgrepo.com/show/355037/google.svg"),
                    label: const Text("Continue with Google", style: TextStyle(color: Colors.black),),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(const Color(0xffffffff)),
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                SizedBox(
                  width: 270,
                  height: 35,
                  child: ElevatedButton.icon(
                    onPressed: (){

                    },
                    icon: SizedBox(width: 25, height: 25,child: SvgPicture.network("https://www.svgrepo.com/show/165010/facebook.svg")),
                    label: const Text("Continue with Facebook", style: TextStyle(color: Colors.black),),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(const Color(0xffffffff)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}