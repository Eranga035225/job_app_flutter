import 'package:flutter/material.dart';
import 'package:job_app_flutter/services/get_data.dart';

import '../job_view/job_view.dart';
import 'widgets/app_bar/app_bar.dart';
import 'widgets/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GetData data  = GetData();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
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
                  fontSize: 28,
                  height: 0.9,
                  fontWeight: FontWeight.bold
                ),),
            
                SizedBox(height: 20),
            
                CustomSearchBar(size: size),
                SizedBox(height: 10),
            
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Text('Popular Jobs', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
                  Text('Show All', style: TextStyle(fontSize: 15, color: Colors.grey.shade700),),
                ],),
            
                SizedBox(height: 20),
            
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    ... List.generate(data.getJobData().length, (index){
                      var job  = data.getJobData()[index];
                      return Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: GestureDetector(
                                  onTap: (){

                                    Navigator.push(context, MaterialPageRoute(builder: (context) => JobView(job: job)));
                                  },
                                  child: Container(
                                        padding : EdgeInsets.all(30),
                                        width: size.width * 0.75,
                                        height: size.width * 0.5,
                                            decoration: BoxDecoration(
                                            color:index == 0 ? Colors.black : Colors.white,
                                            borderRadius: BorderRadius.circular(20)
                                                              ),
                                                child: Column(children: [
                                                    Row(children: [
                                                        Text(job.title, style: TextStyle(fontSize: 16, color: index == 0 ? Colors.white : Colors.black, fontWeight: FontWeight.w600),),
                                                        Spacer(),
                                                        Icon(Icons.bookmark_border, color: Colors.grey.shade700,),
                                                              ],),
                                              
                                              
                                                    Row(children: [
                                                       Text(job.salary, style: TextStyle(fontSize: 15, color: Colors.grey.shade700, fontWeight: FontWeight.w600),),
                                                       SizedBox(width: 17,),
                                                       Container(
                                                        padding: EdgeInsets.all(3),
                                                        decoration: BoxDecoration(
                                                          color: Colors.grey.shade700,
                                                          borderRadius: BorderRadius.circular(10)
                                              
                                                        ),child: Text(job.type, style: TextStyle(
                                                          color: Colors.grey.shade300,
                                              
                                                        ))
                                              
                                              
                                                       )
                                              
                                                    ],),
                                                    Spacer(),
                                              
                                                    Row(children: [
                                                      Container(
                                                        width: 60,
                                                        height: 60,
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.circular(10),
                                                          image: DecorationImage(image: NetworkImage(job.companyLogo), fit: BoxFit.contain)
                                                          
                                                        )
                                                        ),
                                                        SizedBox(width: 10,),
                                                        Column(
                                                         
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                          Text(job.companyName, style: TextStyle(fontSize: 16, color: index==0 ? Colors.white : Colors.black, fontWeight: FontWeight.w600),),
                                                          Text(job.city, style: TextStyle(fontSize: 14, color: Colors.grey.shade600, fontWeight: FontWeight.w600),),
                                                          SizedBox(width: 40,)
                                                        ],),
                                                        Spacer(),
                                                        Text(job.time, style: TextStyle(fontSize: 14, color: Colors.red, fontWeight: FontWeight.w600),),
                                                        
                                                        
                                                      
                                                    ],)
                                              
                                              
                                              
                                              
                                                            ],)
                                                            ),
                                ),
                      );
                  
                  
                  
                  
                  
                  
                    })
                  ],),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Text('Recent Jobs', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
                  Text('Show All', style: TextStyle(fontSize: 15, color: Colors.grey.shade700),),
                ],),
                SizedBox(height: 10),
                Column(children: [
                  ... List.generate(data.getJobData().length, (index){
                    var job  = data.getJobData()[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => JobView(job: job)));
                          },
                          child: ListTile(
                            leading:  Container(
                                                   width: 60,
                                                          height: 60,
                                                          decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius: BorderRadius.circular(10),
                                                            image: DecorationImage(image: NetworkImage(job.companyLogo), fit: BoxFit.contain)
                                                            
                                                          )
                                                          ),
                          
                            title: Text(job.title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                            subtitle: Text('${job.companyName} - ${job.city}', style: TextStyle(fontSize: 14, color: Colors.grey.shade600, fontWeight: FontWeight.w600),),
                            trailing: Text(job.time, style: TextStyle(fontSize: 12, color: Colors.red, fontWeight: FontWeight.w600),  ),
                            
                          ),
                        ),

                                  
                      ),
                    );
                   
            
                  })
            
                ],)
            
            
                
            
                
              
            
            
            
            
            
            
            
              ],
            ),
          ),
          
      )
      




      )
    );
  }
}

