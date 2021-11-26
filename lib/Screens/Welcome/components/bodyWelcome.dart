import 'package:flutter/material.dart';
import 'package:moodful/Screens/SignUp/sign_up_screen.dart';
import 'package:moodful/Screens/main_screens.dart';
import 'package:moodful/components/background.dart';
import 'package:moodful/Screens/Login/login_screen.dart';
import 'package:moodful/components/rounded_button.dart';
import 'package:moodful/Screens/HomeScreen/homeScreen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(padding: EdgeInsets.symmetric(vertical: 80)),
        RoundedButton(
            text: "Login",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            }),
        Padding(padding: EdgeInsets.symmetric(vertical: 40)),
        RoundedButton(
            text: "Sign Up",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpScreen();
                  },
                ),
              );
            }),
        Padding(padding: EdgeInsets.symmetric(vertical: 40)),
      ],
    ));
  }
}
