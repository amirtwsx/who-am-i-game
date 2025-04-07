import 'package:flutter/material.dart';
import 'home_page.dart';
import 'enter_word_page.dart';
import 'about_page.dart';

void main() {
  runApp(const WhoAmIApp());
}

class WhoAmIApp extends StatelessWidget {
  const WhoAmIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Who am I',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        '/enter': (context) => const EnterWordPage(),
        '/about': (context) => const AboutPage(),
      },
    );
  }
}
