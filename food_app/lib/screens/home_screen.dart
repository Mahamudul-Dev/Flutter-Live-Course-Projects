import 'package:flutter/material.dart';

import '../styles/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food App'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    // menu
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: AppColors.lightBackgroundColor,
                      
                        borderRadius: BorderRadius.circular(13)
                      ),
                      child: Center(
                        child: Icon(Icons.sort, color: AppColors.whiteColor,),
                      ),
                    ),
                      
                    // title

                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Deliver To', style: TextStyle(color: AppColors.whiteColor, fontSize: 18, fontWeight: FontWeight.bold),),

                        Text('Bangladesh', style: TextStyle(color: AppColors.whiteColor, fontSize: 16, fontWeight: FontWeight.w500))
                      ],
                    ),
                      
                    // profile image
              
                    Container(
                      height: 50,
                      width: 30,
                      decoration: BoxDecoration(
                        color: AppColors.lightBackgroundColor,
                        image: DecorationImage(image: NetworkImage('https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'), fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(13)
                      ),
                    )
                ],
              ),
            ),



            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('What would you like \nto order!', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.whiteColor),),
            ),



            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  Expanded(child: TextField(
                    decoration: InputDecoration(
                      fillColor: AppColors.lightBackgroundColor,
                      filled: true,
                      prefixIcon: Icon(Icons.search, color: AppColors.whiteColor,),
                      hintText: 'Find for resturaunt or food..',
                      hintStyle: TextStyle(fontWeight: FontWeight.w300, color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(width: 0.6, color: AppColors.whiteColor)
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(width: 0.6, color: AppColors.whiteColor)
                      ),
                    ),
                  )),
              
              
                  SizedBox(width: 10,),
              
              
                  Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: AppColors.lightBackgroundColor,
                        
                          borderRadius: BorderRadius.circular(13)
                        ),
                        child: Center(
                          child: Icon(Icons.menu, color: AppColors.whiteColor,),
                        ),
                      ),
              
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}