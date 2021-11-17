import 'package:flutter/material.dart';
import 'package:moodful/components/background.dart';
import 'package:moodful/constants.dart';
import 'package:moodful/components/TextFieldContainer.dart';
import 'package:moodful/components/rounded_input_field.dart';
import 'package:moodful/components/rounded_button.dart';

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
        RoundedButton(text: "Login")
      ],
    ));
  }
}
