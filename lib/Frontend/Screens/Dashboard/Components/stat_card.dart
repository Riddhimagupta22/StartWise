import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatCard extends StatelessWidget {
  final String title;
  final String value;
  const StatCard({required this.title, required this.value,});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child:
        Card(elevation: 4
      ,shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
    ),
    // cards
    child: Column(
      children: [
        Text(title,style: TextStyle(fontSize: 16),),
        Text(value,style: TextStyle(fontSize: 16,fontWeight:FontWeight.w400),)
      ],
    ),));
  }
}
