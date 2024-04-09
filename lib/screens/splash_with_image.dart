import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_2/screens/Listvieww/listview2.dart';
import 'package:flutter_2/screens/loginpage.dart';
import 'package:google_fonts/google_fonts.dart';
//to set background image or color or gradient for a screen

class Splash_with_Image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => ListView_separated()));
    });

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Colors.orange, Colors.white]),

          //     image: DecorationImage(
          //   fit: BoxFit.cover,
          //   image: AssetImage("assets/images/background.png"),
          //   /// OR
          //   //image: NetworkImage("https://images.unsplash.com/photo-1499980762202-04245017d5bf?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mjl8fHxlbnwwfHx8fHw%3D")
          // )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                  image: AssetImage(
                      "assets/icons/2730365_hamster_inkcontober_squeak_icon (1).png")),
              Text("MyApp",

                  ///style using google fonts
                  style: GoogleFonts.eagleLake(
                    fontSize: 70,
                    color: Colors.pink,
                  )

                  ///style using default textstyle
                  // style: TextStyle(
                  //     fontSize: 70,
                  //     fontStyle: FontStyle.italic,
                  //     color: Colors.green),
                  )
            ],
          ),
        ),
      ),
    );
  }
}
