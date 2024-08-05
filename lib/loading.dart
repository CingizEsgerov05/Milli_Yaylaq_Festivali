import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset("images/loading.png")),
      backgroundColor: Color.fromARGB(255, 119, 171, 34),
    );
  }
}
