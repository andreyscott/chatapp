import 'package:flutter/material.dart';
import 'package:chatapp/pages/login.dart';
import 'package:chatapp/pages/register.dart';

class LoginOrResister extends StatefulWidget {
  const LoginOrResister({
    super.key,
  });

  @override
  State<LoginOrResister> createState() => _LoginOrResisterState();
}

class _LoginOrResisterState extends State<LoginOrResister> {
  bool showLoginPage = true;

  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(
        onTap: togglePages,
      );
    } else {
      return RegisterPage(
        onTap: togglePages,
      );
    }
  }
}
