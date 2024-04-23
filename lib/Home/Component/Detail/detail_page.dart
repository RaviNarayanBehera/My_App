import 'package:ecommerce_app/Global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Home_Page/Lists.dart';
import 'details.dart';

class Detail_Page extends StatefulWidget {
  const Detail_Page({super.key});

  @override
  State<Detail_Page> createState() => _Detail_PageState();
}

class _Detail_PageState extends State<Detail_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF987C5),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFF987C5),
        title: const Text(
          'ICE-Parlour',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(children: [
        details(
          img: itemslist[selectedindex]['img'],
          name: itemslist[selectedindex]['name'],
          price: itemslist[selectedindex]['price'],
          description: itemslist[selectedindex]['description'],
          flavour: itemslist[selectedindex]['flavour'],
          weight: itemslist[selectedindex]['weight'],
        ),
        Spacer(),
        GestureDetector(
          onTap: () {
            bool a = false;
            int index =0;
            for(int i=0; i<cartitems.length; i++)
            {
              if(cartitems[i]['name']==itemslist[selectedindex]['name'])
              {
                a = true;
                index=i;
              }
            }
            if(a)
            {
              cartitems[index]['qty']++;
            }
            else{
              cartitems.add(itemslist[selectedindex]);
            }

            Navigator.of(context).pushNamed('/cart');
          },
          child: Container(
            margin: EdgeInsets.only(bottom: 5),
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.pink.shade300,
                Colors.orange.shade200,
                Colors.purpleAccent.shade200,
              ]),
              borderRadius: BorderRadius.circular(35),
              boxShadow: const [
                BoxShadow(color: Colors.black, spreadRadius: 2, blurRadius: 2)
              ],
            ),
            alignment: Alignment.center,
            child: const Text(
              'Add to Cart ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}