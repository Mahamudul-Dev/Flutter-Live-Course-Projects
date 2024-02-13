import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:local_storage_example/controllers/auth_controller.dart';

import '../routes/routes.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final _controller = AuthController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text(
              'Create A New Account',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _controller.rFullNameController,
              decoration: InputDecoration(
                label: Text('Full name'),
              ),
            ),
            TextFormField(
              controller: _controller.rEmailController,
              decoration: InputDecoration(
                label: Text('Email'),
              ),
            ),
            TextFormField(
              controller: _controller.rUsernameController,
              decoration: InputDecoration(
                label: Text('Username'),
              ),
            ),
            TextFormField(
              obscureText: true,
              obscuringCharacter: '*',
              controller: _controller.rPasswordController,
              decoration: InputDecoration(
                label: Text('Password'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            Row(
              children: [
                Text("Already have a account?"),
                TextButton(onPressed: ()=> context.go(Routes.login), child: const Text('Login'))
              ],
            ),

            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () async {
              await _controller.registerAccount(context);
            }, child: Text('Regster'))
          ],
        ),
      ),
    );
  }
}
