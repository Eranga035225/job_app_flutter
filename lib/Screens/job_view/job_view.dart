import 'package:flutter/material.dart';

import '../../models/job_model.dart';

class JobView extends StatefulWidget {
  final JobModel job; // <-- incoming job

  const JobView({super.key, required this.job});

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
            
          ),

          Container(
            width: size.width,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15))

            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.job.title, style:TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
              
                ],
              
              ),
            )

          )


        
      
        ],
      
      
      
      )
      



      
    );
  }
}