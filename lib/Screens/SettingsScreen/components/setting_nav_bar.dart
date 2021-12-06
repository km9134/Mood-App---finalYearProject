import 'package:flutter/material.dart';
import 'package:moodful/Screens/SettingsScreen/account_screen.dart';
import 'package:moodful/Screens/SettingsScreen/mydata_screen.dart';
import 'package:moodful/Screens/SettingsScreen/privacy_screen.dart';
import 'package:moodful/Screens/SettingsScreen/support_screen.dart';
import 'package:moodful/Screens/SettingsScreen/terms_conditions_screen.dart';
import 'package:moodful/constants.dart';
import 'package:moodful/Screens/Login/login_screen.dart';

class SettingsSideNavBar extends StatefulWidget {
  const SettingsSideNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<SettingsSideNavBar> createState() => _SettingsSideNavBarState();
}

int selectedIndex = 0;

class _SettingsSideNavBarState extends State<SettingsSideNavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: kPrimaryColor,
            ),
            accountName: Text('Kyle'),
            accountEmail: Text('Kyle@Mail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('http://i.pravatar.cc/300'),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Account'),
            selected: selectedIndex == 0,
            onTap: () {
              setState(() {
                selectedIndex = 0;
              });
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => AccountScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.bar_chart),
            title: const Text('My Data'),
            selected: selectedIndex == 1,
            onTap: () {
              setState(() {
                selectedIndex = 1;
              });
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const MyDataScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.chat),
            title: const Text('Support'),
            selected: selectedIndex == 2,
            onTap: () {
              setState(() {
                selectedIndex = 2;
              });
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => SupportScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.flag),
            title: const Text('Terms & Conditions'),
            selected: selectedIndex == 3,
            onTap: () {
              setState(() {
                selectedIndex = 3;
              });

              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => TCScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.lock),
            title: const Text('Privacy Policy'),
            selected: selectedIndex == 4,
            onTap: () {
              setState(() {
                selectedIndex = 4;
              });
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => PrivacyScreen()));
            },
          ),
        ],
      ),
    );
  }
}