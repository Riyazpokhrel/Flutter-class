import 'package:basic_app/News_UI/home_UI.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove debug banner
      home: HomeUi(), // Set HomeScreen as the home page
    );
  }
}
