import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import '../style/app_color.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // text widget item
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello Liana!',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "You've got",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),

                    Text('4 task today', style: TextStyle(color: AppColor.appGreen, fontWeight: FontWeight.bold, fontSize: 28),)
                  ],
                ),
                // image
                badges.Badge(
                  badgeContent: Text('3', style: TextStyle(color: Colors.white),),
                  child: Image(image: AssetImage('assets/images/profile.png')),
                )
              ],
            ),
          );
  }
}