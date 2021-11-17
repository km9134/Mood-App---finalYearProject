import 'package:flutter/material.dart';
import 'package:moodful/Screens/Welcome/components/bodyWelcome.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),//return body from bodyWelcome.dart
    );
  }
}
