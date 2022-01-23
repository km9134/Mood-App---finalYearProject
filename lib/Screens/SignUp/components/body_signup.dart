import 'package:flutter/material.dart';
import 'package:moodful/Screens/Login/login_screen.dart';
import 'package:moodful/components/background.dart';
import 'package:moodful/constants.dart';
import 'package:moodful/components/text_field_container.dart';
import 'package:moodful/components/rounded_button.dart';
import 'package:moodful/components/already_have_an_account_check.dart';
import 'package:provider/provider.dart';
import '../../../components/authentication_service.dart';
import '../../../main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Body extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();

  Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundLogoOnly(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Padding(padding: EdgeInsets.symmetric(vertical: 60)),
        TextFieldContainer(
          child: TextField(
            controller: firstNameController,
            decoration: const InputDecoration(
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
            controller: lastNameController,
            decoration: const InputDecoration(
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
            controller: emailController,
            decoration: const InputDecoration(
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
            controller: passwordController,
            decoration: const InputDecoration(
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
          text: "SignUp",
          press: () {
            context.read<AuthenticationService>().signUp(
                  email: emailController.text.trim(),
                  password: passwordController.text.trim(),
                  firstName: firstNameController.text.trim(),
                  lastName: lastNameController.text.trim(),
                );
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const AuthenticationWrapper();
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
