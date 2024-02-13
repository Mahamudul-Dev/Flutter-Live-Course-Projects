import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';

import '../routes.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                label: Text('Username')
              ),
            ),
        
      
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                label: Text('Password')
              ),
            ),

            const SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              
              if (_usernameController.text != RouterConfiguration.adminUsername) {
                Fluttertoast.showToast(msg: 'Incorrect Username');
                return;
              }

              if(_passwordController.text != RouterConfiguration.adminPass){
                Fluttertoast.showToast(msg: 'Incorrect Password');
                return;
              }

              RouterConfiguration.isLoggedIn = true;
              context.goNamed(Routes.home);

            }, child: Text('Login'))
          ],
        ),
      ),
    );
  }
}