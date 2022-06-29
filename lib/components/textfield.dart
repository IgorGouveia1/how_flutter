import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class GymTextField extends StatelessWidget {
  final String labeltext;
  const GymTextField({Key? key, required this.labeltext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          filled: true, fillColor: Colors.white, labelText: labeltext),
    );
  }
}
