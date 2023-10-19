import 'package:flutter/material.dart';


class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      body: Center(child: Text("Welcome to Transblue Login Screen", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),),),
    );
  }
}
