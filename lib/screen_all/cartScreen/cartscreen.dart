import 'dart:math';

import 'package:e_commerce_jawellry_application/golbles/produect.dart';
import 'package:e_commerce_jawellry_application/screen_all/homeScreen2/homescreen2.dart';
import 'package:e_commerce_jawellry_application/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class cartpage extends StatefulWidget {
  const cartpage({super.key});

  @override
  State<cartpage> createState() => _cartpageState();
}

class _cartpageState extends State<cartpage> {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [

            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,


                  child: Column(

                    children: List.generate(cartList.length, (index) =>
                        Row(
                          children: [


                            Padding(
                              padding: const EdgeInsets.only(top: 25, left: 10),
                              child: Container(

                                height: height*0.22,
                                width: width*0.4,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20)),
                                    color: Colors.pink,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(

                                          cartList[index]['img'],
                                        )
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade500,
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: Offset(1, 3),


                                      )
                                    ]


                                ),


                              ),


                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5, left: 20),
                              child: Column(
                                children: [
                                  Text.rich(
                                      TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '${cartList[index]['price']}\n',
                                              style: TextStyle(fontSize: 22),),
                                            TextSpan(
                                              text: '${cartList[index]['star']}\n',
                                              style: TextStyle(fontSize: 16),),
                                            TextSpan(
                                                text: '${cartList[index]['decropction']}\n',
                                                style: TextStyle(fontSize: 12))
                                          ]

                                      )
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 120),
                                    child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            cartList.removeAt(index);
                                          });
                                        },
                                        child: Icon(Icons.delete,
                                          color: dartgreenColor,)),
                                  ),

                                ],
                              ),


                            ),


                          ],


                        ),


                    ),


                  ),


                ),
              ),
            ),
            ...List.generate(1, (index) => GestureDetector(
                onTap: () {
                Navigator.of(context).pushNamed('/bill');

                for (int i = 0; i < cartList.length; i++) {
                qty = (qty + cartList[i]['member']).toInt();
                amount = amount + cartList[i]['price'] * cartList[i]['member'];
                totalAll=((amount*18)/100)+amount;

                }

    },

    child: cheak(

    )))

          ],


        ),



      )
      ,);
  }
}

Container cheak()
{
  return    Container(
    height: 70,
    width: 150,
    decoration: BoxDecoration(
        color: dartgreenColor,
        borderRadius: BorderRadius.all(Radius.circular(20))
    ),
    child: Center(child: Text('Cheak Out',style: TextStyle(color: whiteColor,fontSize: 20),)),
  );

}


int count=0;