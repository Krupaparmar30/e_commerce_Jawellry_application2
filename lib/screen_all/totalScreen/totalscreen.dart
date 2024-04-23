import 'package:e_commerce_jawellry_application/golbles/produect.dart';
import 'package:e_commerce_jawellry_application/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class totalpage extends StatefulWidget {
  const totalpage({super.key});

  @override
  State<totalpage> createState() => _totalpageState();
}

class _totalpageState extends State<totalpage> {
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
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.backspace_outlined),
          onPressed: () {
            qty=0;
            amount=0;
            totalAll=0;
           Navigator.of(context).pop();

          },

        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/verifey');
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.verified,size: 28,),
            ),
          )
        ],

      ),
      body: Column(

        children: [
          Expanded(
            child: Column(
             children: [
               Container(
                 child: SingleChildScrollView(
                   scrollDirection: Axis.vertical,
                   child: Container(
                     height: height*0.3,
                     width: width*1,
                     decoration: BoxDecoration(
                         color: Colors.grey.shade100,


                         image: DecorationImage(
                             fit: BoxFit.cover,
                             image: AssetImage(
                                 'assets/images/map.webp'
                             )

                         ),
                         boxShadow: [
                           BoxShadow(
                               color: dartgreenColor,
                               spreadRadius: 5,
                               blurRadius: 5,
                               offset: Offset(2,5)
                           )
                         ]

                     ),
                     child: Text('1234,Omnagar,dindoli,Surat',style: TextStyle(
                         fontSize: 16,fontWeight: FontWeight.w600
                     ),
                     ),


                   ),









                 ),



               ),
               Padding(
                 padding: const EdgeInsets.only(top: 20),
                 child: Container(
                   height: height*0.096,
                   width: width*1,
                 decoration: BoxDecoration(
                   color:Colors.grey.shade100,

                 ),
                   child: Padding(
                     padding: const EdgeInsets.only(top: 5, right: 100),
                     child: Center(child: Text('Online Paymet       ',style: TextStyle(color: dartgreenColor,fontWeight: FontWeight.bold,fontSize: 22),)),
                   ),
                 ),
               ),

             ],
            ),


          ),





        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [

         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             height: height*0.080,
             width: width*0.6,
             decoration: BoxDecoration(
                 color: dartgreenColor,
                 borderRadius: BorderRadius.circular(20)
             ),
             child:   Center(child: Text('Total Product : $qty',style: TextStyle(
                 color: whiteColor,fontSize: 18,fontWeight: FontWeight.bold
             ),)),
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             height: height*0.080,
             width: width*0.8,
             decoration: BoxDecoration(
                 color: dartgreenColor,
                 borderRadius: BorderRadius.circular(20)
             ),
             child:   Center(child: Text('Total Amount : $amount',style: TextStyle(
                 color: whiteColor,fontSize: 18,fontWeight: FontWeight.bold
             ),)),

           ),
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             height: height*0.080,
             width: width*0.6,
             decoration: BoxDecoration(
                 color: dartgreenColor,
                 borderRadius: BorderRadius.circular(20)
             ),
             child:   Center(child: Text('Total GST : 18%',style: TextStyle(
                 color: whiteColor,fontSize: 18,fontWeight: FontWeight.bold
             ),)),

           ),
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             height: height*0.080,
             width: width*0.6,
             decoration: BoxDecoration(
                 color: dartgreenColor,
                 borderRadius: BorderRadius.circular(20)
             ),
             child:   Center(child: Text('Total All : $totalAll',style: TextStyle(
                 color: whiteColor,fontSize: 18,fontWeight: FontWeight.bold
             ),)),

           ),
         ),
       ],
        )



        ],
      ),

    );
  }
}





