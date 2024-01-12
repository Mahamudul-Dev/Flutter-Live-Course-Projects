import 'package:class_management_ui/screens/home_screen.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(const ClassManagementApp());
}

class ClassManagementApp extends StatelessWidget {
  const ClassManagementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}