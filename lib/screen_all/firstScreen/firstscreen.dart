import 'package:e_commerce_jawellry_application/screen_all/homeScreen/homescreen.dart';
import 'package:e_commerce_jawellry_application/utils/colors.dart';
import 'package:flutter/material.dart';

class firstscreen extends StatefulWidget {
  const firstscreen({super.key});

  @override
  State<firstscreen> createState() => _firstscreenState();
}

class _firstscreenState extends State<firstscreen> {
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

    return Scaffold(
      body: SafeArea(
        child: Scaffold(
          body: Column(
              children: List.generate(1, (index) =>
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/home');
                    },


                    child: Container(
                      height:height*0.95,
                      width: width*1,
                      color: Colors.black,
                      child: Container(
                        height: height*0.5,
                        width: width*1,
                        decoration: BoxDecoration(
                            color: Colors.black,

                            image: DecorationImage(
                                image: AssetImage(

                                    'assets/images/logo.jpg'
                                )
                            )
                        ),

                      ),

                    ),))
          ),
        ),
      ),
    );
  }
}

