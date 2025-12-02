import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';

import 'homepage/homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), (){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('JobMate', style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(width: 10,),
                Icon(Icons.work_outline_sharp, size: 30,)
              ],
            ),
            Text('Find your dream job', style: TextStyle(
              fontSize: 16,
              color: Colors.grey.shade600
            ),),

            SizedBox(height: 40,),

            CircularProgressIndicator(
              color: Colors.grey.shade800,
              strokeWidth: 2,
              

              
            )

          ],
        ),
      ),

    );
  }
}