import 'package:flutter/material.dart';

import '../../models/job_model.dart';

class JobView extends StatefulWidget {
  final JobModel job; 

  const JobView({super.key, required this.job});

  @override
  State<JobView> createState() => _JobViewState();
}

class _JobViewState extends State<JobView> {
  final tabButtons =  ["Description", "Company", "Reviews"];
  int tabIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; 
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Stack(
        children: [
          Column(
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
                height: 180,
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
                      
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
          
          
                        children: [
                          
                          //Text(widget.job.companyName, style:TextStyle(fontSize: 16, color: Colors.black, ),),
                         
                          Container(
                                                            padding: EdgeInsets.all(5),
                                                            decoration: BoxDecoration(
                                                              color: Colors.black,
                                                              borderRadius: BorderRadius.circular(10)
                                                  
                                                            ),child: Text(widget.job.type, style: TextStyle(
                                                              color: Colors.white,
                                                  
                                                            ))
                                                  
                                                  
                                                           ),
                          SizedBox(width: 20,),
                          Text(widget.job.salary, style:TextStyle(fontSize: 16, color: Colors.grey.shade700, ),),
                          
                          //Text(widget.job.time, style:TextStyle(fontSize: 12, color:Colors.red, fontWeight: FontWeight.bold),),
          
                        ],
                      ),
                      SizedBox(height: 15),
                      ListTile(
                            leading:  Container(
                                                   width: 60,
                                                          height: 60,
                                                          decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius: BorderRadius.circular(10),
                                                            image: DecorationImage(image: NetworkImage(widget.job.companyLogo), fit: BoxFit.contain)
                                                            
                                                          )
                                                          ),
                      
                            title: Text(widget.job.title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                            subtitle: Text('${widget.job.companyName} - ${widget.job.city}', style: TextStyle(fontSize: 14, color: Colors.grey.shade600, fontWeight: FontWeight.w600),),
                            trailing: Text(widget.job.time, style: TextStyle(fontSize: 12, color: Colors.red, fontWeight: FontWeight.w600),  ),
                            
                          ),
          
                         
                            
                          
          
                    ]
            
                  
                  ),
                )
          
              ),
               SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: 
                           tabButtons.map((e) {
                              return GestureDetector(
                                onTap: (){
                                  setState(() {
                                    tabIndex = tabButtons.indexOf(e);
                                  });
          
                                },
                                child: Chip(
                                  // labelPadding: EdgeInsets.all(0),
                                  
                                  label: Text(e, style: TextStyle(color: tabIndex == tabButtons.indexOf(e) ? Colors.white : Colors.black,),),
                                  backgroundColor: tabIndex == tabButtons.indexOf(e) ? Colors.black : Colors.white,
                                ),
                              );
                            },).toList()),
          
          
                  tabIndex == 0 ? Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      height: 170,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Text(widget.job.description, style: TextStyle(color: Colors.grey.shade600),),
                    ),
                  ) : tabIndex == 1 ?
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      height: 170,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Text(widget.job.aboutCompany, style: TextStyle(color: Colors.grey.shade600),),
                    ),
                  ) : 
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Reviews',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
          
                              // List of reviews
                              Column(
                                children: widget.job.reviews.map((review) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        // Username and rating
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              review.username,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                            Row(
                                              children: List.generate(5, (index) {
                                                if (index < review.rating.round()) {
                                                  return Icon(Icons.star, color: Colors.orange, size: 16);
                                                } else {
                                                  return Icon(Icons.star_border, color: Colors.grey, size: 16);
                                                }
                                              }),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(width: 10),
                                        // Comment
                                        Expanded(
                                          child: Text(
                                            review.comment,
                                            style: TextStyle(color: Colors.grey.shade700),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                      )
          
          
          
          
            
          
            ],
          
          
          
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: size.width,
                height: 75,
                 decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                 ),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(20)
              
                      ),
                      child: Icon(Icons.bookmark, color: Colors.white,),
                    ),
                    SizedBox(width: 15),
                    Container(
                      width: size.width * 0.5,
                      height: 50,
                      decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(20)
              
                      ),
                      child: Center(child: Text('Apply Now', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
                    ),
              
              
                  ],
                 )
              
              
              ),
            ),
          )
        ],
      )
      



      
    );
  }
}