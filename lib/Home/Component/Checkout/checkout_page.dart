import 'package:ecommerce_app/Global.dart';
import 'package:ecommerce_app/Home/Component/Cart/cartscreen.dart';
import 'package:ecommerce_app/Home/Component/Home_Page/Lists.dart';
import 'package:flutter/material.dart';

class Checkout_page extends StatefulWidget {
  const Checkout_page({super.key});

  @override
  State<Checkout_page> createState() => _Checkout_pageState();
}

class _Checkout_pageState extends State<Checkout_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFF987C5),
        title: const Text(
          'Payment',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        children: [
          paymentbox(name: cartitems[index]['name'],qty: cartitems[index]['qty'], ),
          Container(
            height: 100,
            margin: EdgeInsets.all(5),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.pink.shade100,
                borderRadius: BorderRadius.circular(25)
            ),
          ),
        ],
      )
    );
  }

  Container paymentbox({required String name,required int qty,}) {
    return Container(
          height: 300,
          margin: EdgeInsets.all(5),
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.pink.shade100,
              borderRadius: BorderRadius.circular(25)
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                      height: 3,
                    ),
                Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Qty        :',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      TextSpan(
                        text: ' $qty',
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Total     :',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      TextSpan(
                        text: '  $total',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

              ],
            ),
          ),
        );
  }
}
