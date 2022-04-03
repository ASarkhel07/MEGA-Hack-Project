import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Splash Screen"),
      ), // AppBar
      body: const Center(
        child: Text("Home Page"),
      ), // Center
    ); // Scaffold
  }
}
