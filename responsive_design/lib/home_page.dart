import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Design'),

        actions: [
          Text('${size.width}')
        ],
      ),

      body: Container(
        height: size.height - kBottomNavigationBarHeight,
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: AspectRatio(aspectRatio: 8/8, child: Container(
              color: Colors.red,
            ),),
          ),
        ),
      )
    );
  }
}