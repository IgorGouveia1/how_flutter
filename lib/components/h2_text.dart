import 'package:flutter/widgets.dart';

class H2Text extends StatelessWidget {
  final String text;
  const H2Text({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
