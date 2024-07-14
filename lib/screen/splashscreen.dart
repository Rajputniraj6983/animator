import 'package:animator/screen/Homescreen.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Homescreen(),));
        },
          child: Container(
            height: double.infinity,
            child: Image.asset(
              'assets/download.jfif',
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ),
    );
  }
}
