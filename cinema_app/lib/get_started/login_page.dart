import 'package:cinema_app/get_started/sign_up_page.dart';
import 'package:cinema_app/widgets/widgets.dart';
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
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopRow(text: "Log in"),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Log in with the following options",
                  style: TextStyle(color: Colors.grey.shade500),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LoginOptions(
                      imagePath:
                          "https://static.vecteezy.com/system/resources/thumbnails/002/520/838/small/apple-logo-black-isolated-on-transparent-background-free-vector.jpg",
                    ),
                    LoginOptions(
                      imagePath:
                          "https://static.vecteezy.com/system/resources/thumbnails/002/520/838/small/apple-logo-black-isolated-on-transparent-background-free-vector.jpg",
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  "Email",
                  style: TextStyle(color: Colors.grey.shade300),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(10),  
                  ),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.grey.shade600),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.all(10.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  "Password",
                  style: TextStyle(color: Colors.grey.shade300),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(10),
                    // border: Border.all(color: Colors.black)
                  ),
                  child: TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.grey.shade600),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.all(10.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TheButtons(text: "Log in", ontap: signIn),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Dont have an account?",
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return SignUp();
                      })));
                    },
                    child: Text("Sign Up",
                        style: TextStyle(
                            color: Colors.grey.shade300,
                            fontSize: 15,
                            fontWeight: FontWeight.w400)),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
 