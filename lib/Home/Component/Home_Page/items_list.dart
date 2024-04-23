import 'package:flutter/material.dart';
import 'Lists.dart';

Row item_Lists({required String img,required String name,required String flavour,required String weight,required int price}) {
  return Row(
    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(8),
            height: 210,
            width: 347,
            decoration: BoxDecoration(
              color: Colors.pink.shade100,
              borderRadius: BorderRadius.all(Radius.circular(25)),
              boxShadow: const [
                BoxShadow(color: Colors.black, spreadRadius: 1.5)
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 210,
                  width: 145,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(img),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 8),
                  height: 210,
                  width: 175,
                  color: Colors.pink.shade100,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: name+'\n',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),
                        ),
                        TextSpan(
                          text: '\n'+flavour+'\n',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),
                        ),
                        TextSpan(
                          text: 'Flavour Ice-Cream\n',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),
                        ),
                        TextSpan(
                          text: '\n'+weight+'\n',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),
                        ),
                        TextSpan(
                          text: '\n'+'Rs. '+price.toString()+'/-',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ],
  );
}

Column tab_Bar({required String img, required String name}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        // margin: EdgeInsets.only(right: 10),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            color: Colors.pink.shade50,
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(img),
            ),
            boxShadow: const [BoxShadow(color: Colors.black, spreadRadius: 1)]),
      ),
      // const Padding(padding: EdgeInsets.only(top: 5)),
      Text(
        name,
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
      ),
    ],
  );
}
