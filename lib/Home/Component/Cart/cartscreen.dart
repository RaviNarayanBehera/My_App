import 'package:ecommerce_app/Global.dart';
import 'package:flutter/material.dart';

import '../Home_Page/Lists.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF987C5),
      bottomNavigationBar: BottomAppBar(color: Color(0xFFF987C5),height: 80,child: GestureDetector(
        onTap: () { total=0;

         setState(() {
           amt =0;
           for(int i=0; i<cartitems.length;i++)
           {
             qty = (qty + cartitems[i]['qty']).toInt();
             amt=amt+cartitems[i]['price']*cartitems[i]['qty'];
           }

           total = (((amt*18)/100)+amt).toInt();
         });
          Navigator.of(context).pushNamed('/checkout');
        },
        child: Container(
          margin: EdgeInsets.only(bottom: 5),
          height: 80,
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
            '  Checkout ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFF987C5),
        title: const Text(
          'ICE-Parlour',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(
              cartitems.length,
                  (index) =>
                  cartlist(
                    index: index,
                    img: cartitems[index]['img'],
                    name: cartitems[index]['name'],
                    flavour: cartitems[index]['flavour'],
                    weight: cartitems[index]['weight'],
                    price: cartitems[index]['price'],
                  ),
            ),
          ],
        ),
      ),
    );
  }


  Row cartlist({required String img,
    required String name,
    required int index,
    required String flavour,
    required String weight,
    required int price}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          margin: EdgeInsets.all(8),
          height: 210,
          width: 347,
          decoration: BoxDecoration(
            color: Colors.pink.shade100,
            borderRadius: BorderRadius.all(Radius.circular(25)),
            boxShadow: const [BoxShadow(color: Colors.black, spreadRadius: 1.5)],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 210,
                width: 125,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(img),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 5),
                height: 210,
                width: 165,
                color: Colors.pink.shade100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      name,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    Text(
                      flavour,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const Text(
                      'Flavour Ice-Cream\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Rs. '+price.toString()+'/-'+'\n',
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    Row(
                      children: [
                        FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              if(cartitems[index]['qty']>1)
                               {
                                 cartitems[index]['qty']--;
                               }
                            });
                          },
                          backgroundColor: Colors.pink.shade200,
                          child: Icon(
                            Icons.remove,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          '${cartitems[index]['qty']}',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              cartitems[index]['qty']++;
                            });
                          },
                          backgroundColor: Colors.pink.shade200,
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    cartitems.removeAt(index);
                  });
                },
                child: Container(
                    height: 210,
                    width: 52,
                    decoration: BoxDecoration(
                        color: Colors.pink.shade200,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25),
                            bottomRight: Radius.circular(25))),
                    child: Icon(Icons.delete)),
              ),
            ],
          ),
        ),
      ],
    );
  }}

int index = 0;
int count = 0;
int qty = 0;
int total = 0;