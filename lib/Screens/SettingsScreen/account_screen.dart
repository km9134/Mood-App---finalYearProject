import 'package:flutter/material.dart';
import 'package:moodful/constants.dart';
import 'package:moodful/Screens/SettingsScreen/components/setting_nav_bar.dart';

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
      body: const Center(
        child: Text(
          "Hello User \n\n "
          "Please use the options available to take control of your account\n\n ",
          style: TextStyle(color: Colors.black, fontSize: 15),
          textAlign: TextAlign.center,
        ),
      ),
      drawer: const SettingsSideNavBar(),
    );
  }
}

