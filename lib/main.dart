import 'package:e_commerce_jawellry_application/screen_all/cartScreen/cartscreen.dart';
import 'package:e_commerce_jawellry_application/screen_all/detailsScreen/detailsscreen.dart';
import 'package:e_commerce_jawellry_application/screen_all/detailsScreen/detailsscreen.dart';
import 'package:e_commerce_jawellry_application/screen_all/firstScreen/firstscreen.dart';
import 'package:e_commerce_jawellry_application/screen_all/homeScreen/homescreen.dart';
import 'package:e_commerce_jawellry_application/screen_all/homeScreen2/homescreen2.dart';
import 'package:e_commerce_jawellry_application/screen_all/homeScreen2/ringhomescreen.dart';
import 'package:e_commerce_jawellry_application/screen_all/lastScreen/lastpage.dart';
import 'package:e_commerce_jawellry_application/screen_all/totalScreen/totalscreen.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(jawellryApp());
}


class jawellryApp extends StatelessWidget {
  const jawellryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     // home:cartpage(),
      routes: {
        '/':(context) => firstscreen(),
        '/home':(context) => homePage(),

        '/home2':(context) => homePage2(),
        // '/home3':(context) => ringPage(),
        //
        '/details':(context) => detailsPage(),
        '/cart':(context) => cartpage(),
        '/bill':(context) => totalpage(),
        '/verifey':(context) => lastpage(),
      },


    );
  }
}
