import 'package:flutter/material.dart';
import 'Home/Component/Cart/cartscreen.dart';
import 'Home/Component/Checkout/checkout_page.dart';
import 'Home/Component/Detail/detail_page.dart';
import 'Home/Component/Home_Page/home_page.dart';

void main()
{
  runApp(const IceCream());
}

class IceCream extends StatelessWidget {
  const IceCream({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Detail_Page(),
      routes: {
        '/' : (context)=> Home_page(),
        '/detail' : (context)=> Detail_Page(),
        '/cart' : (context)=> CartScreen(),
        '/checkout' : (context)=> Checkout_page(),
      },
    );
  }
}












// Color(0xFFF987C5),