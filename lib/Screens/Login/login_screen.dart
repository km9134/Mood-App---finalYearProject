import 'package:flutter/material.dart';
import 'package:moodful/Screens/Login/components/bodyLogin.dart';


class LoginScreen extends StatelessWidget {
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
