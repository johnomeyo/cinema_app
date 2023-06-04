import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  LoginPage({super.key});

   final emailController = TextEditingController();

  final passwordController = TextEditingController();

  void signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text("Welcome"),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(hintText: "email"),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(hintText: "password"),
            ),
            const SizedBox(
              height: 50,
            ),
            TextButton(onPressed: signIn, child: const Text("Sign in"))
          ],
        ),
      ),
    );
  }
}
