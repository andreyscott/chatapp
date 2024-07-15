import 'package:chatapp/components/mybutton.dart';
import 'package:chatapp/components/text_field.dart';
import 'package:chatapp/pages/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({
    super.key,
  });

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          // logo
          const Icon(
            Icons.message,
            size: 55,
          ),
          const SizedBox(
            height: 45,
          ),

          Text(
            "Chatter App",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Theme.of(context).colorScheme.primary),
          ),
          const SizedBox(
            height: 15,
          ),

          // email here

          MyTextField(
              controller: emailController,
              hintText: 'Email',
              obscureText: false),

          const SizedBox(
            height: 10,
          ),

          MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true),
          const SizedBox(
            height: 25,
          ),
          MyButton(text: 'LOGIN', onTap: login),

          const SizedBox(
            height: 25,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Not a member?'),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterPage()));
                },
                child: Text(
                  'Register Now',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
