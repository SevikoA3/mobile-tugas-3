import 'package:flutter/material.dart';

class LoginController {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool validate() {
    return usernameController.text.isNotEmpty && passwordController.text.isNotEmpty;
  }
}