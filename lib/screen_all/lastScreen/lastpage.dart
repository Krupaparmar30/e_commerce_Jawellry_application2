import 'package:flutter/material.dart';

class lastpage extends StatefulWidget {
  const lastpage({super.key});

  @override
  State<lastpage> createState() => _lastpageState();
}

class _lastpageState extends State<lastpage> {
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
    return SafeArea(child: Scaffold
      (
      body: Column(
        children: [
          Container(
            height: height*0.9,
            width: width*1,
            child: Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Container(

                decoration: BoxDecoration(
                  color: Colors.grey.shade100,

                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/ss.jpg'
                        )
                    )
                ),

              ),
            ),
          )

        ],
      ),
    ));
  }
}
