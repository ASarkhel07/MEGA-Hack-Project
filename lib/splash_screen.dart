import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tracer/home_page.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  __SplashScreenState createState() => __SplashScreenState();
}

class __SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 3), ()=>Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context)=>Home())) );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      width: double.infinity,
      height: double.infinity,  
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(127, 0, 255, 234),
            Color.fromARGB(111, 234, 0, 255),
        ],
       ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
         Column(
           children: [
             Image.asset(
               'assets/images/newlogo.png',
             height: 300.0,
             width: 300.0, 
       ),
        Text("Tracer\n No kid left behind",
         textAlign: TextAlign.center,
         style: TextStyle(
           color:Colors.white,
           fontWeight:FontWeight.bold,
           fontSize: 18.0,
           fontFamily: 'Raleway-Regular'),
          ),
           ],
         ),
       
        CircularProgressIndicator(),
      ])
     ));
  }
}
