import 'package:flutter/material.dart';
import 'package:task_manager/screens/home_page.dart';

void main(){
  runApp(const TaskManegerApp());
}


class TaskManegerApp extends StatelessWidget {
  const TaskManegerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}