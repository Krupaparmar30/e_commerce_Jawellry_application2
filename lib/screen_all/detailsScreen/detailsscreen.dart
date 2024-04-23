import 'package:e_commerce_jawellry_application/golbles/produect.dart';
import 'package:e_commerce_jawellry_application/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class detailsPage extends StatefulWidget {
  const detailsPage({super.key});

  @override
  State<detailsPage> createState() => _detailsPageState();
}

class _detailsPageState extends State<detailsPage> {
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
    var data = ModalRoute.of(context)!.settings.arguments as Map;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: height*0.36,
                    width: 390,
                    color: whiteColor,
                    child: Center(
                      child: Row(
                        children: [

                          InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 170,left: 10),
                              child: Icon(Icons.backspace),
                            ),
                          ),


                          Padding(
                            padding: const EdgeInsets.only(left: 48, right: 80),
                            child: Container(
                              height: height*0.5,
                              width:width*0.55,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(100),
                                      bottomLeft: Radius.circular(100)),
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                        data['img'],
                                      ))),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 1),
                        child: Container(
                          height:height*0.22,
                          width: 387,
                          decoration: BoxDecoration(
                              color: dartgreenColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),

                          child: Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: Stack(
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 290, top: 2),
                                      child: Text(
                                        '${data['price']}',
                                        style: TextStyle(
                                            fontSize: 28, color: whiteColor),
                                      ),
                                    ),

                                    Text(
                                      data['line'],
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.grey.shade100),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 200,
                                      ),
                                      child: Text(
                                        data['star'],
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),

                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: height*0.45,
                          width: width*1,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 200, top: 3),
                                    child: Text(
                                      data['Des'],
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 262, top: 3),
                                    child: Text(
                                      data['weight'],
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 255, top: 3),
                                    child: Text(
                                      data['gram'],
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 262, top: 3),
                                    child: Text(
                                      data['Height'],
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 260, top: 3),
                                    child: Text(
                                      data['mem'],
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 262, top: 3),
                                    child: Text(
                                      data['Length'],
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 235, top: 3),
                                    child: Text(
                                      data['inch'],
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 180, top: 52),
                                    child: Text(
                                      data['details'],
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  cartList.add(data);
                                  // setState(() {
                                  //   count++;
                                  // });
                                  // print(count);
                                  bool stu=false;
                                  int index=0;
                                  for(int i=0;i<cartList.length;i++)
                                    {
                                      if(cartList[i]['name']==product1[selectedIndex]['name']&&product2[selectedIndex]['name']&&product3[selectedIndex]['name'])
                                        {
                                          index=i;
                                          stu=true;

                                        }
                                    }
                                  if(stu)

                                    {
                                      cartList[index]['member']++;
                                    }
                                  else
                                    {
                                      cartList.add(cartList[selectedIndex]);
                                    }
                                },
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 180, left: 100),
                                      child: Container(
                                        height: height*0.095,
                                        width: width*0.45,
                                        decoration: BoxDecoration(
                                          color: dartgreenColor,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 20, left: 30),
                                          child: Text(
                                            'Add To Cart ',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
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
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
      ),
      ),
    );
  }
}

//
Padding addToCart() {
  return Padding(
    padding: const EdgeInsets.only(top: 100, left: 180),
    child: Container(
      height: 60,
      width: 160,
      decoration: BoxDecoration(
        color: dartgreenColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 30),
        child: Text(
          'Add To Cart ',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    ),
  );
}

int count = 0;
