import 'package:flutter/material.dart';
import 'package:moodful/components/background.dart';
import 'package:moodful/constants.dart';
import 'package:moodful/components/text_field_container.dart';
import 'package:moodful/components/rounded_button.dart';
import 'package:moodful/components/already_have_an_account_check.dart';
import 'package:moodful/Screens/SignUp/sign_up_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return BackgroundLogoOnly(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(padding: EdgeInsets.symmetric(vertical: 20)),
        TextFieldContainer(
          child: TextField(
            decoration: InputDecoration(
              icon: Icon(
                Icons.person,
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
          text: "Login",
          press: () {},
        ),
        AlreadyHaveAnAccountCheck(
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SignUpScreen();
                },
              ),
            );
          },
          login: true,
        ),
      ],
    ));
  }
}
