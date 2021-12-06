import 'package:flutter/material.dart';
import 'package:moodful/constants.dart';
import 'package:moodful/Screens/SettingsScreen/components/setting_nav_bar.dart';

class MyDataScreen extends StatelessWidget {
  const MyDataScreen({
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
          "Welcome to your data screen",
          textAlign: TextAlign.center,
        ),
      ),
      drawer: const SettingsSideNavBar(),
    );
  }
}

