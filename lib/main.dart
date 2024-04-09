import 'package:flutter/material.dart';
import 'package:flutter_2/screens/splash_with_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash_with_Image(),
      debugShowCheckedModeBanner: false,
    );
  }
}
