import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:local_storage_example/controllers/auth_controller.dart';

import '../routes/routes.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _controller = AuthController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text(
              'Hi.. Welcome Back!',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _controller.lUsernameController,
              decoration: InputDecoration(
                label: Text('Username'),
              ),
            ),
            TextFormField(
              controller: _controller.lPasswordController,
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                label: Text('Password'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            Row(
              children: [
                Text("Don't have a account?"),
                TextButton(onPressed: ()=> context.go(Routes.register), child: const Text('Register'))
              ],
            ),

            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () async {
              await _controller.login(context);
            }, child: Text('Login'))
          ],
        ),
      ),
    );
  }
}
