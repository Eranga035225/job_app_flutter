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
                fontSize: 30,
                height: 0.9,
                fontWeight: FontWeight.bold
              ),),

              SizedBox(height: 20),

              Row(
                children: [
                  SizedBox(
                    width: size.width  * 0.79,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search For Jobs',
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
                  ),
                  
                  Spacer(),

                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12)


                    ),
                    child: Icon(Icons.filter_list, color: Colors.white,),
                  ),

                  



                ],
              ),
              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Text('Popular Jobs', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
                Text('Show All', style: TextStyle(fontSize: 15, color: Colors.grey.shade700),),
              ],),

              SizedBox(height: 10),
              Container(
                padding : EdgeInsets.all(8),
                width: size.width * 0.75,
                height: size.width * 0.5,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20)
                ),
              child: Column(children: [
                Row(children: [
                  Text('Senior Software Engineer', style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),),
                  Spacer(),
                  Icon(Icons.bookmark_border, color: Colors.grey.shade700,),
                ],)
              ],)
              )

              
            







            ],
          ),
          
      )
      




      )
    );
  }
}

