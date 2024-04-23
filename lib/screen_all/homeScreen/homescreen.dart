
import 'dart:math';

import 'package:e_commerce_jawellry_application/golbles/produect.dart';
import 'package:e_commerce_jawellry_application/screen_all/homeScreen2/homescreen2.dart';
import 'package:e_commerce_jawellry_application/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.black,
      body: Align(
        child:
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
              children: [
                Center(
                  child: Expanded(
                    child: Container(
                      height: height*0.096,
                      width: width*1,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: dartgreenColor,
                                blurRadius: 2,
                                spreadRadius: 2,
                                offset: Offset(5,5)
                            )
                          ]
          
                      ),
                      child: Container(

                        height: height*0.5,
                        width: width*1,

                        decoration: BoxDecoration(
                            color: Colors.black,

                          boxShadow: [
                            BoxShadow(
                              color: dartgreenColor,

                              blurRadius: 1,
                              spreadRadius: 1,
                              offset: Offset(5,5)
                            )
                          ]
                        ),
                      
                        child: Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 80,
                                width: 50,
                      
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                
                      
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Icon(
                                      Icons.align_horizontal_left,color: Colors.grey,
                                      size: 32,
                                    ),
                                  ),
                                ),
                                
                              ),
                                     Text('Jawellry',style: TextStyle(color:Colors.grey.shade100,fontWeight: FontWeight.bold,fontSize: 28),),
                                     Icon(Icons.local_grocery_store_sharp,color: Colors.grey.shade100,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

          
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     Container(
                //         height:height*0.060,
                //         width: width*0.7,
                //         decoration: BoxDecoration(
                //           color: Colors.black,
                //           boxShadow: [
                //             BoxShadow(
                //                 color: whiteColor,
                //                 blurRadius: 3,
                //                 spreadRadius: 3,
                //                 offset: Offset(0, 5)
                //             )
                //           ],
                //           borderRadius: BorderRadius.circular(10),
                //         ),
                //         child: const Padding(
                //           padding: EdgeInsets.all(10.0),
                //           child: Text('Search Jawellry', style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                //         )),
                //     Padding(
                //       padding: const EdgeInsets.only(left: 10.0),
                //       child: Container(
                //         height: height*0.065,
                //         width:width*0.13,
                //         decoration: BoxDecoration(
                //           color: dartgreenColor,
                //
                //           borderRadius: BorderRadius.circular(100),
                //
                //         ),
                //         child: Icon(
                //           Icons.account_tree_rounded, size: 20, color: whiteColor,),
                //       ),
                //     ),
                //
                //   ],
                // ),
          
          
          
          
          
                Container(
                  child: Stack(
                    children: [
                      Container(
                        height: height*0.3,
                        width: width*0.5,
                        color:Colors.black,
                      ),
          
          
          
                      Column(
                          children: List.generate(1, (index) => GestureDetector(onTap: () {
                          Navigator.of(context).pushNamed('/home2');
          
                          },child: first1(),))
                      ),
          
                      Column(
                          children: List.generate(1, (index) => GestureDetector(onTap: () {
                            Navigator.of(context).pushNamed('/home2');
          
                          },child: first2(),))
                      ),
                      Column(
                          children: List.generate(1, (index) => GestureDetector(onTap: () {
                            Navigator.of(context).pushNamed('/home2');
          
                          },child: first3(),))
                      )
          
                    ],
                  ),
                )
          
          
          
          
              ],
            ),
        ),


      ),
    ),);
  }
}

Padding first1()
{
  return  Padding(
    padding: const EdgeInsets.only(left: 100,bottom: 400),
    child: Container(
      height: 190,
      width: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: dartgreenColor,
            blurRadius: 5,
            spreadRadius: 5,
            offset: Offset(5,5)
          )
        ],
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(


            'assets/images/offer3.jpg',


          ),
        ),
      ),
      child: Text('Offer New Collation',style: TextStyle(
        color: whiteColor,fontWeight: FontWeight.bold,
        fontSize: 22,letterSpacing: 2
      ),),
    ),
  );
}
Padding first2()
{
  return  Padding(
    padding: const EdgeInsets.only(left: 0,top: 220),
    child: Container(
      height: 190,
      width: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
              color: dartgreenColor,
              blurRadius: 5,
              spreadRadius: 5,
              offset: Offset(5,5)

          )
        ],
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(


            'assets/images/offer4.webp',

          ),
        ),
      ),

    ),
  );
}


Padding first3()
{
  return  Padding(
    padding:  EdgeInsets.only(left: 100,top: 430),
    child: Container(
      height: 190,
      width: 190,
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                color: dartgreenColor,
                blurRadius: 5,
                spreadRadius: 5,
                offset: Offset(5,5)
            )
          ],
        image: DecorationImage(
        fit: BoxFit.cover,
          image: AssetImage(
            'assets/images/offer3.jpg',
          )
        )

        ),
      child: Padding(
        padding: const EdgeInsets.only(right: 5,top: 10),
        child: Text('New Jawellry Design',style: TextStyle(
            letterSpacing: 2,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: whiteColor
        ),),
      ),
      ),

  );
}