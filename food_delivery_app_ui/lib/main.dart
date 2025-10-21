

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/pages/cart_page.dart';
import 'package:food_delivery_app_ui/pages/home_page.dart';
import 'package:food_delivery_app_ui/pages/item_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF5F5F3),
        useMaterial3: false,
      ),
      routes:{
        '/':(context)=>HomePage(),
        'cartPage':(context)=>CartPage(),
        'itemPage':(context)=>ItemPage(),
      }

    );
  }
}
