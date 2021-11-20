import 'package:flutter/material.dart';
import 'package:moodful/Screens/SignUp/components/bodySignup.dart';


class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(parent: NeverScrollableScrollPhysics()),
        child: Container(
          child: Column(
            children:[
              Body(),
            ],
          ),
        ),
      ),
    );
  }
}
