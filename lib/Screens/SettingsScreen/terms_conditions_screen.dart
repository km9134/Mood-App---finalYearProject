import 'package:flutter/material.dart';
import 'package:moodful/constants.dart';
import 'package:moodful/Screens/SettingsScreen/components/setting_nav_bar.dart';

class TCScreen extends StatelessWidget {
  const TCScreen({
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
          "Welcome to your terms and conditions screen",
          textAlign: TextAlign.center,
        ),
      ),
      drawer: const SettingsSideNavBar(),
    );
  }
}

