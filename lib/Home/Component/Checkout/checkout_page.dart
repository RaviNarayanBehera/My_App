import 'package:ecommerce_app/Global.dart';
import 'package:ecommerce_app/Home/Component/Cart/cartscreen.dart';
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
          leading: IconButton(
            onPressed: (){
              qty = 0;
              amt =0 ;
              total =0;
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back),
          ),
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
            paymentbox(),
          ],
        )
    );
  }

  Container paymentbox() {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Text('Bill Recipt',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 30),)),
            SizedBox(
              height: 3,
            ),
            Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: '\nAmount     :',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  TextSpan(
                    text: '     $amt',
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: '\nGST            :',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  TextSpan(
                    text: '     18%',
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: '\nTotal          :',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  TextSpan(
                    text: '     $total',
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
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

int qty=0;