import 'package:flutter/material.dart';

class GymButton extends StatelessWidget {
  final String text;
  const GymButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        onPrimary: Colors.black,
        primary: Colors.white,
        textStyle: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w400,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(text),
      ),
    );
  }
}
