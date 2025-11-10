import 'package:flutter/material.dart';
import 'package:food_order_ui/pages/start_page/StartPage.dart';
import 'package:food_order_ui/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        primarySwatch: Colors.orange,
      ),
      //home:StartPage(),
      home:SplashScreen(),
    );
  }
}

