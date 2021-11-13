import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; // This size provides total height and width of our screen
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              "assets/images/homeIcon.jpg",
              width: size.width,
            ),
          ),
          Positioned(
            child: Image.asset(
              "assets/images/logo.jpg",
              width: size.width,
              //alignment: Alignment.topCenter,
            ),
          ),
        ],
      ),
    );
  }
}
