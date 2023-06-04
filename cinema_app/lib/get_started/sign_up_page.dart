import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class SignUp extends StatelessWidget {
   SignUp({super.key});


     final emailController = TextEditingController();

  final passwordController = TextEditingController();

  void signUp() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sign Up"),),
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
          TextButton(onPressed: signUp, child: const Text("Sign in"))
        ],
      ),
    );
  }
    
  }

