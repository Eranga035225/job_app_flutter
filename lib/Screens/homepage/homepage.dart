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
    final size = MediaQuery.of(context).size;
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
              SizedBox(height: 10,),
              Text('Find Your\nCreative Job', style: TextStyle(
                fontSize: 32,
                height: 0.9,
                fontWeight: FontWeight.bold
              ),),

              SizedBox(height: 20),

              SizedBox(
                width: size.width  * 0.6,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for jobs',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                  ),
                )
              )

              
            







            ],
          ),
          
      )
      




      )
    );
  }
}

