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
      home: Expanded(
        child: Container(
          decoration: const BoxDecoration(
            // image: DecorationImage(image: NetworkImage(" https://images.dailykos.com/images/929591/story_image/2021-Movie-Releases.png?1616393238",),fit: BoxFit.cover),
          ),
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text("Welcome"),
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black)),
                    child: TextField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.black),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(10.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
               Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black)),
                    child: TextField(
                      controller: passwordController,
                      decoration: const InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.black),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(10.0),
                      ),
                    ),
                  ),
                ),
                TextButton(onPressed: signIn, child: const Text("Sign in"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
