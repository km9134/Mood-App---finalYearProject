import 'package:flutter/material.dart';
import 'package:moodful/constants.dart';
import 'package:moodful/Screens/SettingsScreen/components/setting_nav_bar.dart';
import 'package:moodful/components/rounded_button.dart';
import 'package:moodful/components/authentication_service.dart';
import 'package:provider/provider.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: const Text("Moodful")),
      body:  Center(
        child: Column(
    children: <Widget>[

        Text(
          "Hello User \n\n "
          "Please use the options available to take control of your account\n\n ",
          style: TextStyle(color: Colors.black, fontSize: 15),
          textAlign: TextAlign.center,
        ),
      RoundedButton(text: "Sign Out", press: (){
        context.read<AuthenticationService>().signOut();
      },

      ),
        ],
        ),

      ),


      drawer: const SettingsSideNavBar(),
    );
  }
}

