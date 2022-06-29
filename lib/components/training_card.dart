import 'package:flutter/material.dart';

class TrainingCard extends StatelessWidget {
  final String text;
  const TrainingCard({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
          onTap: () {},
          child: SizedBox(
            width: 300,
            height: 100,
            child: Text(text),
          )),
    );
  }
}
