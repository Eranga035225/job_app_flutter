import 'package:flutter/material.dart';

class JobView extends StatefulWidget {
  const JobView({super.key});

  @override
  State<JobView> createState() => _JobViewState();
}

class _JobViewState extends State<JobView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage('https://tse1.mm.bing.net/th/id/OIP.1mha44Q-rfM9hrpOvQ0UnwHaFj?rs=1&pid=ImgDetMain&o=7&rm=3'))

              

            ),
          )


        
      
        ],
      
      
      
      )
      



      
    );
  }
}