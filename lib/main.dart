import 'package:flutter/material.dart';
import 'package:moodful/Screens/Welcome/welcome_screen.dart';
import 'package:moodful/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:  false,
      title: 'Moodful',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
    ),
      home: const WelcomeScreen(),
    );
  }
}



