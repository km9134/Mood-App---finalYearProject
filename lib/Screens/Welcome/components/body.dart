import 'package:flutter/material.dart';
import 'package:moodful/Screens/Welcome/components/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    // This size provide us total height and width of our screen
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "WELCOME",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.teal, width: 2.0)))),
            child: Text('Sign Up'),
            onPressed: () {},
          ),
          ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.teal, width: 2.0)))),
            child: Text('Login'),
            onPressed: () {},
          ),
        ],
      ),

    );

  }
}
