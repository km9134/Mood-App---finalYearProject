import 'package:flutter/material.dart';
import 'package:moodful/constants.dart';
import 'package:provider/src/provider.dart';

import 'authentication_service.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;

  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: newElevatedButton(),
      ),
    );
  }


  Widget newElevatedButton() {
    return ElevatedButton(
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
      onPressed: press,
      style: ElevatedButton.styleFrom(
          primary: kPrimaryColor,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          textStyle: const TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500)),
    );
  }
}
