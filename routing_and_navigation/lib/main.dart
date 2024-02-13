import 'package:flutter/material.dart';
import 'package:routing_and_navigation/routes.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: RouterConfiguration.router,
    );
  }
}