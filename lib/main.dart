// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:milli_yaylaq_fest/assets/project_themes.dart';
import 'package:milli_yaylaq_fest/loading.dart';
import 'package:milli_yaylaq_fest/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ProjectThemes().mainTheme,
      home: const LoginPage(),
    );
  }
}
