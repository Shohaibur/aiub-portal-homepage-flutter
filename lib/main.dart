import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_app_1/widgets/header_image.dart';
import 'package:flutter_app_1/widgets/login_btn.dart';
import 'package:flutter_app_1/widgets/my_text_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Page(),
    );
  }
}

class Page extends StatelessWidget {
  const Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 210, 210),
      // appBar: AppBar(
      //   title: const Text('AppBar'),
      // ),
      body: Center(
        child: Container(
          height: 470,
          width: 300,
          color: const Color.fromARGB(255, 255, 255,
              255), // Set container color to blue (you can change it to your preferred color)
          child: Column(
            children: [
              const SizedBox(height: 20),
              const HeaderImage(),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  "AMERICAN INTERNATIONAL UNIVERSITY-BANGLADESH",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text("- where leaders are created.",
                    style:
                        TextStyle(color: Color.fromARGB(255, 127, 168, 173))),
              ),
              const SizedBox(height: 30),
              const Center(
                child: Text("Sign in with your organizational id number."),
              ),
              const SizedBox(height: 30),
              MyTextField(mylabeltext: "User Name"),
              const SizedBox(
                height: 10,
              ),
              MyTextField(
                mylabeltext: "Password",
              ),
              const SizedBox(height: 10),
              const LoginBtn(),
              const SizedBox(height: 35),
              Center(
                child: GestureDetector(
                  onTap: () => log("ButtonIsPressed"), //console.log
                  child: const Text("Can't access your account?",
                      style: TextStyle(color: Colors.blue)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
