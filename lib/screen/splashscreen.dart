import 'package:animator/screen/Homescreen.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Center(
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
        const Padding(
          padding:  EdgeInsets.only(top: 100,left: 200),
          child: Row(crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Spac",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 35,color: Colors.white,letterSpacing: 3),),
              Text("E",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 35,color: Colors.red,letterSpacing: 3),),
              Text("d",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 35,color: Colors.white,letterSpacing: 3),),
            ],
          ),
        )
      ],
      ),
    );
  }
}
