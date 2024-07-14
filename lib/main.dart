import 'package:animator/screen/Homescreen.dart';
import 'package:animator/screen/splashscreen.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => Splashscreen(),
        '/home' : (context) => Homescreen(),
        '/home' : (context) => Homescreen(),
      },
    );
  }
}
