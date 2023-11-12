
import 'package:assignment_task/home_screen/HomeScreen.dart';
import 'package:assignment_task/secand%20_page/rooms-guest.dart';
import 'package:flutter/material.dart';



void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home:HomeScreen() ,
    );
  }
}
