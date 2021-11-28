import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
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
            top: 150,
            child: Image.asset(
              "assets/images/logo.jpg",
              width: size.width * 0.3,
            ),
          ),
          child,
        ],
      ),
    );
  }
}

class BackgroundLogoOnly extends StatelessWidget {
  final Widget child;

  const BackgroundLogoOnly({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 150,
            child: Image.asset(
              "assets/images/logo.jpg",
              width: size.width * 0.3,
            ),
          ),
          child,
        ],
      ),
    );
  }
}

class BackgroundLogoRight extends StatelessWidget {
  final Widget child;
  final String text;

  const BackgroundLogoRight({
    Key? key,
    required this.child,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
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
            right: 20,
            top: 50,
            child: Image.asset(
              "assets/images/logo.jpg",
              width: size.width * 0.15,
            ),
          ),
          Positioned(
            left: 20,
            top: 50,
            child: Text(
              text,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            width: size.width,
          ),
          child,
        ],
      ),
    );
  }
}

class BackgroundLogoRightBlank extends StatelessWidget {
  final Widget child;
  final String text;

  const BackgroundLogoRightBlank({
    Key? key,
    required this.child,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            right: 20,
            top: 50,
            child: Image.asset(
              "assets/images/logo.jpg",
              width: size.width * 0.15,
            ),
          ),
          Positioned(
            left: 20,
            top: 50,
            child: Text(
              text,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            width: size.width,
          ),
          child,
        ],
      ),
    );
  }
}
