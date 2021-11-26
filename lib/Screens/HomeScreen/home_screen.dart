import 'package:flutter/material.dart';
import 'package:moodful/Screens/HomeScreen//components/homeScreen.dart';
import 'package:moodful/Screens/main_screens.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(parent: NeverScrollableScrollPhysics()),
        child: Container(
          child: Column(
            children: [
              MainScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
