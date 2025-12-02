import 'package:flutter/material.dart';
import 'package:job_app_flutter/Screens/splash_screen.dart';

import 'Screens/homepage/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Job App',
      debugShowCheckedModeBanner: false,

     
      home: SplashScreen(), 
    );
  }
}

