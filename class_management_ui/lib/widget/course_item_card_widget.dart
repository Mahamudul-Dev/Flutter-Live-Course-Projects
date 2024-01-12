import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseItemCardWidget extends StatelessWidget {
  const CourseItemCardWidget({
    Key? key,
    required this.cardColor,
    required this.cardTitle,
    required this.cardImagePath,
  }) : super(key: key);

  final Color cardColor;
  final String cardTitle;
  final String cardImagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 152,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: cardColor, borderRadius: BorderRadius.circular(16)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // image
            SvgPicture.asset(cardImagePath, semanticsLabel: 'Math'),
            const SizedBox(height: 10,),
            // title
            Text(
              cardTitle,
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
