import 'package:flutter/material.dart';
import 'package:moodful/constants.dart';
import 'package:moodful/Screens/SettingsScreen/components/setting_nav_bar.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({
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
          "Welcome to your privacy screen",
          textAlign: TextAlign.center,
        ),
      ),
      drawer: const SettingsSideNavBar(),
    );
  }
}

