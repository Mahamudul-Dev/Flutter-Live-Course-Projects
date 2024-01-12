import 'package:class_management_ui/style/app_color.dart';
import 'package:class_management_ui/style/asset_manager.dart';
import 'package:flutter/material.dart';

import '../widget/course_item_card_widget.dart';

class CourseComponent extends StatelessWidget {
  const CourseComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            'Courses',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            'Your running subjects',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Colors.grey),
          ),
        ),

        SizedBox(height: 20,),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: 10,),
              CourseItemCardWidget(
            cardColor: AppColor.appRedLight,
            cardTitle: 'Mathmatics',
            cardImagePath: AssetManager.mathmaticsIcon,
          ),
          
          SizedBox(width: 20,),
          
          CourseItemCardWidget(
            cardColor: AppColor.yellowLight,
            cardTitle: 'Chemistry',
            cardImagePath: AssetManager.chemestryIcon,
          ),
          
          SizedBox(width: 20,),
          
          CourseItemCardWidget(
            cardColor: AppColor.pinkLight,
            cardTitle: 'Study',
            cardImagePath: AssetManager.studyIcon,
          ),
            ],
          ),
        )
        
      ],
    );
  }
}
