import 'package:class_management_ui/component/course_component.dart';
import 'package:class_management_ui/component/header_component.dart';
import 'package:class_management_ui/component/shedule_component.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HeaderComponent(),
            SizedBox(height: 20,),
            CourseComponent(),
            SizedBox(height: 20,),
            SheduleComponent()
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: ''),
            NavigationDestination(icon: Icon(Icons.group), label: ''),
            NavigationDestination(icon: Icon(Icons.person), label: ''),
            NavigationDestination(icon: Icon(Icons.search), label: '')
          ]),
    );
  }
}
