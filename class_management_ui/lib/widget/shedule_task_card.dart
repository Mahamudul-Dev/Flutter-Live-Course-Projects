import 'package:class_management_ui/style/asset_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../style/app_color.dart';

class SheduleTaskCard extends StatelessWidget {
  const SheduleTaskCard({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.time,
    required this.teacherName,
    required this.mediaSource,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final String time;
  final String teacherName;
  final String mediaSource;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 174,
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        color: AppColor.blueAccent,
        borderRadius: BorderRadius.all(Radius.circular(16))
      ),

      child: Row(
        children: [
          // details column
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),),
              Text(subTitle, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Colors.white),),
            
              const SizedBox(height: 15,),

              Row(
                children: [
                  const Icon(Icons.watch_later, size: 14, color: Colors.white,),
                  const SizedBox(width: 8,),
                  Text(time, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Colors.white),),
                ],
              ),


              Row(
                children: [
                  SvgPicture.asset(AssetManager.demoTeacherPhoto, height: 14, width: 14,),
                  const SizedBox(width: 8,),
                  Text(teacherName, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Colors.white),),
                ],
              )
            ],
          )

          // menu & icon column
        ],
      ),
    );
  }
}
