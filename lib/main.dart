import 'package:flutter/material.dart';

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
              SizedBox(
                height: 100,
                width: 100,
                child: Image.network(
                    "https://upload.wikimedia.org/wikipedia/en/thumb/8/8c/American_International_University-Bangladesh_Monogram.svg/1200px-American_International_University-Bangladesh_Monogram.svg.png"),
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text("AMERICAN INTERNATIONAL UNIVERSITY-BANGLADESH",
                    textAlign: TextAlign.center),
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
              const SizedBox(
                height: 35,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 35,
                width: 250,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Password"),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 35,
                width: 250,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 35),
              const Center(
                child: Text("Can't access your account?",
                    style: TextStyle(color: Colors.blue)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
