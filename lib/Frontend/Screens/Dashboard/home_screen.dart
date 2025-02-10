import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'StartWise',
          style: GoogleFonts.pacifico(
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none),),
          CircleAvatar(
          backgroundImage:AssetImage("images/IMG@1x.png"),),
          SizedBox(width: 10,)
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

        ],
      ),
    );
  }
}
