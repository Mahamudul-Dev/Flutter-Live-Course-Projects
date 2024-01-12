import 'package:class_management_ui/widget/shedule_task_card.dart';
import 'package:flutter/material.dart';

class SheduleComponent extends StatelessWidget {
  const SheduleComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Your shedule', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),

          Text('Upcomming Classes and tasks', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey),),
          SizedBox(height: 20,),
          SheduleTaskCard(title: 'Physics', subTitle: 'Chapter 3: Force', time: '09:30', teacherName: 'Alex Jesus', mediaSource: 'Google Meet'),
        ],
      ),
    );
  }
}