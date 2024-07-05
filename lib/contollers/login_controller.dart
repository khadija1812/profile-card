import 'package:flutter/material.dart';

class LoginController {
  String username = 'khadija';
  String password = 'password';
  final TextEditingController idController = TextEditingController();
  final TextEditingController passController = TextEditingController();
}

final LoginController loginController = LoginController();