import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
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
        child: Icon(Icons.menu, color: Colors.grey.shade800,size:26)
    
      ),
      Text('Creative Jobs', style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold
        ),
      ),
    
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
        child: Icon(Icons.person, color: Colors.grey.shade800,size: 26),
    
        
      )
    
    ],);
  }
}