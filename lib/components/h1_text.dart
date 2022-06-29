import 'package:flutter/widgets.dart';

class H1Text extends StatelessWidget {
  final String text;
  const H1Text({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }
}
