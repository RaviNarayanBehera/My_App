import 'dart:async';

import 'package:ecommerce_app/Home/Component/Home_Page/home_page.dart';
import 'package:flutter/material.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}


class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home_page()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,

            child: Image.asset('assets/images/splash.png',fit: BoxFit.cover,),
            ),
        ],
      ),
    );
  }
}
