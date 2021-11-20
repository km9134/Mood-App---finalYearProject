import 'package:flutter/material.dart';
import 'package:moodful/Screens/Login/login_screen.dart';
import 'package:moodful/components/background.dart';
import 'package:moodful/constants.dart';
import 'package:moodful/components/TextFieldContainer.dart';
import 'package:moodful/components/rounded_button.dart';
import 'package:moodful/components/already_have_an_account_check.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return BackgroundLogoOnly(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(padding: EdgeInsets.symmetric(vertical: 60)),
        TextFieldContainer(
          child: TextField(
            decoration: InputDecoration(
              icon: Icon(
                Icons.person,
                color: kPrimaryColor,
              ),
              hintText: "First Name",
              border: InputBorder.none,
            ),
          ),
        ),
        TextFieldContainer(
          child: TextField(
            decoration: InputDecoration(
              icon: Icon(
                Icons.person,
                color: kPrimaryColor,
              ),
              hintText: "Last Name",
              border: InputBorder.none,
            ),
          ),
        ),
        TextFieldContainer(
          child: TextField(
            decoration: InputDecoration(
              icon: Icon(
                Icons.mail,
                color: kPrimaryColor,
              ),
              hintText: "Your email",
              border: InputBorder.none,
            ),
          ),
        ),
        TextFieldContainer(
          child: TextField(
            decoration: InputDecoration(
              icon: Icon(
                Icons.lock,
                color: kPrimaryColor,
              ),
              suffixIcon: Icon(
                Icons.visibility,
                color: kPrimaryColor,
              ),
              hintText: "Password",
              border: InputBorder.none,
            ),
          ),
        ),
        RoundedButton(
          text: "Sign Up",
          press: () {},
        ),
        AlreadyHaveAnAccountCheck(
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return LoginScreen();
                },
              ),
            );
          },
          login: false,
        ),
      ],
    ));
  }
}
