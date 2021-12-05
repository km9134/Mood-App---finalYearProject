import 'package:flutter/material.dart';
import 'package:moodful/Screens/HomeScreen/homeScreen.dart';
import 'package:moodful/Screens/Login/login_screen.dart';
import 'package:moodful/Screens/SignUp/sign_up_screen.dart';
import 'package:moodful/Screens/InsightsScreen/insightScreen.dart';
import 'package:moodful/Screens/Welcome/welcome_screen.dart';
import 'package:moodful/constants.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: Text("Moodful")),
      body: const Center(
        child: Text(
          "Hello User \n\n "
          "Please use the options available to take control of your account\n\n ",
          style: const TextStyle(color: Colors.black, fontSize: 15),
          textAlign: TextAlign.center,
        ),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            new UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: kPrimaryColor,
              ),
              accountName: new Text('Kyle'),
              accountEmail: new Text('Kyle@Mail.com'),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage('http://i.pravatar.cc/300'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: const Text('Account'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pushReplacement(context,
                    new MaterialPageRoute(builder: (ctxt) => LoginScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.bar_chart),
              title: const Text('My Data'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pushReplacement(context,
                    new MaterialPageRoute(builder: (ctxt) => LoginScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: const Text('Support'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pushReplacement(context,
                    new MaterialPageRoute(builder: (ctxt) => LoginScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.flag),
              title: const Text('Terms & Conditions'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pushReplacement(context,
                    new MaterialPageRoute(builder: (ctxt) => LoginScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: const Text('Privacy Policy'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pushReplacement(context,
                    new MaterialPageRoute(builder: (ctxt) => LoginScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
