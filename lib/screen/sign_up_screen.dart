import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.indigoAccent,
                Colors.indigo
              ],
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Container(),
              ),
              Container(
                height: 310.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      SizedBox(height: 45.0),
                      UserInput(emailController, 'Email', TextInputType.emailAddress),
                      UserInput(passwordController, 'Password', TextInputType.visiblePassword),
                    ],
                  ),
                )
              ),
            ],
          )
        )
      )
    );
  }

  Widget UserInput(TextEditingController editingController, String hintText, TextInputType keyboardType) {
    return Container(
      height: 55.0,
      margin: const EdgeInsets.only(bottom: 15.0),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(30.0)),
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0, top: 15.0, right: 25.0),
        child: TextField(
          controller: editingController,
          autocorrect: false,
          enableSuggestions: false,
          autofocus: false,
          decoration: InputDecoration.collapsed(hintText: hintText, hintStyle: TextStyle(fontSize: 18.0, color: Colors.black38, fontStyle: FontStyle.italic)),          
          keyboardType: keyboardType,
        )
      )
    );
  }
}