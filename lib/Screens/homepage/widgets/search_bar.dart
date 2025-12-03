import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

