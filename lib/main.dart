//import 'package:basic_dev/pages/home.dart';
import 'package:basic_dev/pages/home.dart';
import 'package:basic_dev/pages/homescreen.dart';
//import 'package:basic_dev/pages/login.dart';
import 'package:flutter/material.dart';
//import 'package:path/path.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
      routes: {
        //'/' : (context) => LoginScreen(),
        '/homepage':(context) => HomePage() // for navigation 
      }
      

    );
  }
}
      
      