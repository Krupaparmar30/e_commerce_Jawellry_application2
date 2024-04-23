import 'package:e_commerce_jawellry_application/golbles/produect.dart';
import 'package:e_commerce_jawellry_application/screen_all/detailsScreen/detailsscreen.dart';
import 'package:e_commerce_jawellry_application/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class homePage2 extends StatefulWidget {
  const homePage2({super.key});

  @override
  State<homePage2> createState() => _homePage2State();
}

class _homePage2State extends State<homePage2> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return SafeArea(

      child: Scaffold(


      body: Align(

        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
                height: height*0.1,
                width: width*0.99,
                color: whiteColor,
                child:SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Container(
                        height: height*0.1,
                        width: width*0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                        ),

                        child:InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: const Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: const Icon(
                              Icons.arrow_back_ios,
                              size: 22,

                            ),
                          ),
                        ),


                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 35),
                          child: Text('Neaklecs',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                        ),
                      ),
                      InkWell(

                        onTap: () {
                          cartList.add;
                          Navigator.of(context).pushNamed('/cart');
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.local_grocery_store_sharp),
                        ),
                      ),
                    ],
                  ),
                )
            ),
        Container(
          height: height*0.11,
          width: double.infinity,
          color: Colors.grey.shade100,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    height: height*0.7,
                    width: width*0.13,

                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/girl.jpg'
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: dartgreenColor,spreadRadius: 2,blurRadius: 2,offset: Offset(1,1)
                        )
                      ]
                    ),

                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(

                    children: [
                      Text('Hello Krishna',
                        style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black,
                            fontSize: 18),),
                    ],
                  ),
                ),
              ],
            ),
          ),

        ),


        SingleChildScrollView(
              physics: BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.normal),

              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(

                    height: height*0.74,
                    width: double.infinity,

                    decoration: BoxDecoration(
                        color: dartgreenColor,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
                    ),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: SingleChildScrollView(

                        scrollDirection: Axis.vertical,

                        child: Column(
                          children: [
                            Text.rich(
                                TextSpan(
                                    children: [
                                      TextSpan(text: '  All    ',style: TextStyle(color: whiteColor,fontSize: 16)),
                                      TextSpan(text: 'Chokers    ',style: TextStyle(color: goldenColor,fontSize: 16)),
                                      TextSpan(text: 'Lariats    ',style: TextStyle(color: whiteColor,fontSize: 16)),
                                      TextSpan(text: 'Long Neckleac    ',style: TextStyle(color: whiteColor,fontSize: 16)),
                                      TextSpan(text: 'Coller',style: TextStyle(color: whiteColor,fontSize: 16)),

                                    ]
                                )
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,

                                child: Row(

                                 children:
                                   List.generate(product1.length, (index) => GestureDetector(
                                     onTap: () {
                                      Navigator.of(context).pushNamed('/details',arguments: product1[index]);
                                     },
                                   child: box1(price: product1[index]['price'],img: product1[index]['img'],decropction: product1[index]['decropction'],

                                   )),),

                                ),

                            ),




                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                               children: List.generate(product2.length, (index) => GestureDetector(
                               onTap: () {
                                 Navigator.of(context).pushNamed('/details',arguments: product2[index]);
                                 setState(() {
                                   selectedIndex=index;
                                 });
                               },



                               child: box1(price: product2[index]['price'],img: product2[index]['img'],decropction: product2[index]['decropction'])),)
                              ),
                            ),

                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                  children: List.generate(product3.length, (index) => GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushNamed('/details',arguments: product3[index]);
                                    setState(() {

                                      selectedIndex=index;
                                    });
                                  }, child: box1(price: product3[index]['price'],img: product3[index]['img'],decropction: product3[index]['decropction'])),)
                              ),
                            ),



                          ],
                        ),
                      ),
                    ),
                  ),




                  ),

                ],
              ),
            )

          ],
        ),
      ),

    ),);
  }
}
Padding box1({required int price,required String img,required String decropction}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      children: [
        Stack(
          children: [
             Container(
              height: 215,
              width: 160,


              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    spreadRadius: 2,
                    offset: Offset(3, 5),
                  )
                ],
                image: DecorationImage(
                  fit: BoxFit.fill,

                  image: AssetImage(
                    img,
                  ),


                ),

              ),



              alignment: Alignment.bottomCenter,
              child: Container(
                height: 50,
                width: 160,


                decoration: BoxDecoration(
                  color: GreenColor,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),

                ),
                child: Text.rich(
                    TextSpan(
                        children: [
                          TextSpan(text: '$price\n',style: TextStyle(color: whiteColor)),
                          TextSpan(text: decropction,
                              style: TextStyle(fontSize: 14, color: lightgray)),
                        ]
                    )
                ),
              ),

            ),

          ],

        ),

      ],
    ),
  );
}
