import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(children: [
            Container(
              width: 50, 
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.grey.shade400,
                )
          
          
              ),
              child: Icon(Icons.menu, color: Colors.grey.shade800,)
          
            ),
            Text('Creative Jobs', style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
              ),
            ),

          
          
          ],),
          
      )
      




      )
    );
  }
}