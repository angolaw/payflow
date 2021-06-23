import 'package:flutter/material.dart';
import 'package:payflow/modules/home/home_page.dart';
import 'package:payflow/modules/login/login_page.dart';
import 'package:payflow/shared/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
  var _isAuthenticated = false;
  UserModel? _user;
  UserModel get user => _user!;
  void setUser(BuildContext context, var user) {
    if (user != null) {
      _user = user;

      _isAuthenticated = true;
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      _isAuthenticated = false;
      Navigator.pushReplacementNamed(context, '/login');
    }
  }

  Future<void> saveUser(UserModel user) async {
    final instance = await SharedPreferences.getInstance();
    instance.setString("user", user.toJSON());
    return;
  }

  Future<void> currentUser(BuildContext context) async {
    final instance = await SharedPreferences.getInstance();
    final user = instance.get("user");
    setUser(context, user);
    return;
  }
}
