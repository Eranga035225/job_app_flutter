import 'package:flutter/material.dart';

import 'widgets/app_bar/app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              SizedBox(height: 15,),
              Text('Good Morning Era', style: TextStyle(
                fontSize: 17,
                color: Colors.grey,
                
              ),),
              Text('Find Your\nCreative Job', style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold
              ),),

              SizedBox(height: 15),

              





            ],
          ),
          
      )
      




      )
    );
  }
}

