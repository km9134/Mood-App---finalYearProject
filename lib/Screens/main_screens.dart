import 'package:flutter/material.dart';
import 'package:moodful/Screens/HomeScreen/components/homeScreen.dart';
import 'package:moodful/Screens/Login/login_screen.dart';
import 'package:moodful/Screens/SignUp/sign_up_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
int pageIndex =0;
  List <Widget> pageList = <Widget>[
    HomeScreen(),
    SignUpScreen(),
    LoginScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body:pageList[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: (value){
          setState(() {
            pageIndex = value;
          });
        },
        type:BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon:Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon:Icon(Icons.bar_chart), label: "Insights"),
          BottomNavigationBarItem(icon:Icon(Icons.settings), label: "Settings"),


        ],


      ),
    );
  }
}
