
import 'package:assignment_task/home_screen/HomeScreen.dart';
import 'package:flutter/material.dart';

import 'home_screen/form.dart';
import 'home_screen/DataSelcted.dart';
import 'home_screen/DropdownList.dart';

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
