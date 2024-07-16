import 'dart:math';

import 'package:animator/modal/solar_list.dart';
import 'package:animator/screen/Detail_screen.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  Widget build(BuildContext context) {
    late AnimationController animationController;

    return Scaffold(
        backgroundColor: Colors.black45,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          centerTitle: true,
          //   title: Text('Solar System',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
          actions: [
            Icon(
              Icons.list_outlined,
              size: 35,
              color: Colors.white,
            )
          ],
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [
              CircleAvatar(radius: 50,
                child: TweenAnimationBuilder(
                  duration: Duration(seconds: 1000),
                  tween: Tween<double>(end: 100* pi,begin: 0),
                  builder: (context, value, child) {
                    return Transform.rotate(angle: value,child: child,);
                  },
                  child: Image.asset(
                    'assets/moon.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100, top: 100),
                child: Container(
                  height: 250,
                  child: TweenAnimationBuilder(
                    duration: Duration(seconds: 1000),
                    tween: Tween<double>(end: 100* pi,begin:  0),
                    builder: (context,value,child){
                      return Transform.rotate(angle: value,child: child,);
                  },
                    child: Image.asset(
                      'assets/earth.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 250),
                child: Text(
                  'Solar Space',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 45,
                      letterSpacing: 2),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: solar.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailScreen(),));
                  liveIndex = index;
                },
                child: Card(
                  child: Image.asset(
                    solar[index]["img"],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            height: 230,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Text(
                'Earth is the third planet from the Sun\n'
                'and the only astronomical object known to\n'
                'harbor life.This is enabled by Earth being\n'
                'an ocean world, the only one in the Solar\n'
                'System sustaining liquid surface water.'
                'The remaining 29.2% of Earth  crust\n'
                'is land,most of which is located in the\n'
                'form of landmasses within Earth land \n'
                'is somewhat humid and covered by \n'
                'while large sheets of ice at Earth polar \n'
                'deserts retain more water than Earth \n'
                'groundwater, lakes, rivers and .............',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        const Spacer(),
          Center(
            child: Container(
              height: 60,
              width: 390,
             child: Column(
               children: [
                 Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Text('40075',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                     Text('64.2k',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                     Text('64000',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                   ],
                 ),
                 Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Text('Km from Earth',style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
                     Text('Flight Duration',style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
                     Text('Flight Prices',style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
                   ],
                 )
               ],
             ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)
                  ),border: Border.all(color: Colors.grey)
              ),
            ),
          )
        ]));
  }
}
int liveIndex = 0;