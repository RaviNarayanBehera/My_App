import 'package:ecommerce_app/Global.dart';
import 'package:flutter/material.dart';

import 'Lists.dart';
import 'items_list.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF987C5),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFF987C5),
        title: const Text(
          'ICE-Parlour',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),
        ),
        leading: const Icon(
          Icons.menu,
          size: 30,
          color: Colors.black,
        ),
        actions:  [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/cart');
              },
              child: Icon(
                Icons.shopping_cart,
                size: 30,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 45,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.icecream_rounded),
                    SizedBox(
                      width: 60,
                    ),
                    Text(
                      'Search Here',
                      style: TextStyle(color: Colors.black54, fontSize: 23),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 190,
                      width: 350,
                      decoration: const BoxDecoration(
                        color: Color(0xffF7EF8A),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25)),
                        image: DecorationImage(
                            image: AssetImage("assets/images/My_banner.png"),
                            fit: BoxFit.fill),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              spreadRadius: 3,
                              blurRadius: 2)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Icon(
                Icons.more_horiz,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    tab_Bar(img: 'assets/images/c1.png', name: 'Cone '),
                    tab_Bar(img: 'assets/images/a1.png', name: 'Box '),
                    tab_Bar(img: 'assets/images/s2.png', name: 'Stick'),
                    tab_Bar(img: 'assets/images/f1.jpg', name: 'Family Pack'),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(top: 5),
                child: const Text(
                  ' Items',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      fontSize: 25),
                ),
              ),
              Column(
                  children: List.generate(
                      itemslist.length,
                      (index) => GestureDetector(onTap: () {
                         selectedindex = index ;
                        Navigator.of(context).pushNamed('/detail');
                      },
                          child: item_Lists(
                              img: itemslist[index]['img'],
                              name: itemslist[index]['name'],
                              flavour: itemslist[index]['flavour'],
                              weight: itemslist[index]['weight'],
                              price: itemslist[index]['price'],
                          ),),)
                  ),
            ],
          ),
        ),
      ),
    );
  }
}

// Padding(
// padding: const EdgeInsets.only(left: 10),
// child: Column(
// children: [
// Container(
// height: 80,
// width: 80,
// decoration: BoxDecoration(
// color: Colors.pink.shade50,
// shape: BoxShape.circle,
// image: const DecorationImage(
// image: AssetImage("assets/images/a1.png"),
// fit: BoxFit.fill),
// boxShadow: const [
// BoxShadow(color: Colors.black, spreadRadius: 1)
// ],
// ),
// ),
// const Padding(padding: EdgeInsets.only(top: 5)),
// const Text(
// 'Box',
// style: TextStyle(
// fontWeight: FontWeight.w600, fontSize: 15),
// ),
// ],
// ),
// ),
// Padding(
// padding: const EdgeInsets.only(left: 10),
// child: Column(
// children: [
// Container(
// height: 80,
// width: 80,
// decoration: BoxDecoration(
// color: Colors.pink.shade50,
// shape: BoxShape.circle,
// image: const DecorationImage(
// image: AssetImage("assets/images/s2.png"),
// fit: BoxFit.fitWidth),
// boxShadow: const [
// BoxShadow(
// color: Colors.black, spreadRadius: 1)
// ]),
// ),
// const Padding(padding: EdgeInsets.only(top: 5)),
// const Text(
// 'Sticks',
// style: TextStyle(
// fontWeight: FontWeight.w600, fontSize: 15),
// ),
// ],
// ),
// ),
// Padding(
// padding: const EdgeInsets.only(left: 10),
// child: Column(
// children: [
// Container(
// height: 80,
// width: 80,
// decoration: BoxDecoration(
// color: Colors.pink.shade50,
// shape: BoxShape.circle,
// image: const DecorationImage(
// image: AssetImage("assets/images/f1.jpg"),
// fit: BoxFit.fill),
// boxShadow: const [
// BoxShadow(
// color: Colors.black, spreadRadius: 1)
// ]),
// ),
// const Padding(padding: EdgeInsets.only(top: 5)),
// const Text(
// 'Family Pack',
// style: TextStyle(
// fontWeight: FontWeight.w600, fontSize: 15),
// ),
// ],
// ),
// ),
