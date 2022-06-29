import 'package:flutter/material.dart';
import 'package:flutter_gym_app/components/h1_text.dart';

class ChestTrainingPage extends StatelessWidget {
  const ChestTrainingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          H1Text(text: 'Peito'),
        ],
      ),
    );
  }
}
