import 'package:flutter/material.dart';
import 'package:moodful/components/background.dart';
import 'package:moodful/constants.dart';
import 'package:moodful/components/text_field_container.dart';
import 'package:moodful/components/rounded_button.dart';
import 'package:moodful/components/already_have_an_account_check.dart';
import 'package:moodful/Screens/SignUp/sign_up_screen.dart';
import 'package:moodful/components/authentication_service.dart';
import 'package:moodful/main.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
            controller: emailController,
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
            controller: passwordController,
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
        ElevatedButton(
          onPressed: () {
            context.read<AuthenticationService>().signIn(
                  email: emailController.text.trim(),
                  password: passwordController.text.trim(),
                );
            AuthenticationWrapper();
          },
          child: Text("Sign in"),
        ),
        RoundedButton(
          text: "Login",
          press: () {
            context.read<AuthenticationService>().signIn(
                  email: emailController.text.trim(),
                  password: passwordController.text.trim(),
                );
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return AuthenticationWrapper();
                },
              ),
            );
          },
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
