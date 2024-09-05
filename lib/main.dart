import 'package:daily_tak_project/ui/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor:  const Color(0xFFFED36A),
        primaryColorLight: const Color(0xFF455A64),
        primaryColorDark: Colors.black,
        dividerColor: Colors.white,
        useMaterial3: true,
      ),
      home: const SplashScreenPage(),
    );
  }
}

