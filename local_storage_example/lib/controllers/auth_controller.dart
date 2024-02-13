import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:local_storage_example/pref/local_prefrences.dart';

import '../routes/routes.dart';

class AuthController {

  final TextEditingController rFullNameController = TextEditingController();
  final TextEditingController rEmailController = TextEditingController();
  final TextEditingController rUsernameController = TextEditingController();
  final TextEditingController rPasswordController = TextEditingController();

  final TextEditingController lUsernameController = TextEditingController();
  final TextEditingController lPasswordController = TextEditingController();

  Future registerAccount(BuildContext context)async{
    final name = await LocalPreferences.setString('fullName', rFullNameController.text);
    final email = await LocalPreferences.setString('email', rEmailController.text);
    final username = await LocalPreferences.setString('username', rUsernameController.text);
    final password = await LocalPreferences.setString('password', rPasswordController.text);

    if(email && username && password){
      context.go(Routes.login);
    } else {
      Fluttertoast.showToast(msg: 'Please fill all fields');
      return;
    }
  }


  Future login(BuildContext context) async {
    final uname = LocalPreferences.getString('username');
    final pass = LocalPreferences.getString('password');

    print(uname);

    print(pass);

    if(uname != lUsernameController.text && pass != lPasswordController.text){
      Fluttertoast.showToast(msg: 'Your credential is wrong!');
      return;
    } else {
      Fluttertoast.showToast(msg: 'Login success!');
      context.go(Routes.home);
      return;
    }
  }
}