import 'package:cinema_app/get_started/login_page.dart';
import 'package:cinema_app/main.dart';
// import 'package:cinema_app/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const   Home();
          } else {
              return  LoginPage()  ;
          }
        },
      ),
    );
  }
}