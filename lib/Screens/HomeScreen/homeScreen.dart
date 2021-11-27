import 'package:flutter/material.dart';
import 'package:moodful/Screens/SignUp/sign_up_screen.dart';
import 'package:moodful/components/background.dart';
import 'package:moodful/Screens/Login/login_screen.dart';
import 'package:moodful/components/rounded_button.dart';
import 'package:moodful/components/background.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen

    //return Scaffold(
    return BackgroundLogoRight(
      text: "Home",
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Spacer(),
          Expanded(
            flex: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 10,
                  child: Text(
                    "Hello User \n\n "
                    "Glad you're back, please enter a mood for today.\n\n "
                    "Be sure to check the insights page for the most up to date mood analysis\n\n"
                    "The more you know the more control you have",
                    style: const TextStyle(color: Colors.black, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Positioned(
                    top: 150,
                    child: Image.asset(
                      "assets/images/recordMoodLogo.jpg",
                      width: size.width * 0.5,
                    ),
                  ),
                  ],
            ),
          ),
        ],
      ),
    );
  }
}
