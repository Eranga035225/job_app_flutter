import 'package:flutter/material.dart';

class JobView extends StatefulWidget {
  const JobView({super.key});

  @override
  State<JobView> createState() => _JobViewState();
}

class _JobViewState extends State<JobView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; 
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: [
          Container(
            height: 250,
            width: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage('https://tse1.mm.bing.net/th/id/OIP.1mha44Q-rfM9hrpOvQ0UnwHaFj?rs=1&pid=ImgDetMain&o=7&rm=3'))

            ),
            child: Stack(
              children: [
                SafeArea(child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.black.withAlpha(120),
                      child: Icon(Icons.arrow_back, color: Colors.white,),
                    ),
                  ),
                )),
              ],
              
            )
            
          )


        
      
        ],
      
      
      
      )
      



      
    );
  }
}