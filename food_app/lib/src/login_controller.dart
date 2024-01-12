import 'package:flutter/material.dart';
import 'package:food_app/screens/home_screen.dart';

class LoginController {
  final formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final adminEmail = 'admin@mail.com';
  final adminPassword = '123456';

  void login(BuildContext context) {
    if (formKey.currentState!.validate()) {
      if (emailController.text == adminEmail) {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=> const HomeScreen()));
      }
    } else {
      print('Invalide');
    }
  }
}
