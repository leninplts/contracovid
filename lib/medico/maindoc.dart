import 'package:flutter/material.dart';
import 'package:contracovid/medico/widgets/bottom_nav.dart';

void main() {
  runApp(MyDoctorApp());
}

class MyDoctorApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Axiforma',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BottomNavBar(
        currIndex: 0,
        flag: true,
      ),
    );
  }
}
