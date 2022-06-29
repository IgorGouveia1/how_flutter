import 'package:flutter/material.dart';
import 'package:flutter_gym_app/components/h1_text.dart';
import 'package:flutter_gym_app/components/h2_text.dart';
import 'package:flutter_gym_app/components/training_card.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const H1Text(text: 'DASHBOARD'),
            const H2Text(text: 'Meus Treinos'),
            Row(
              children: const [
                TrainingCard(
                  text: 'teste',
                ),
                TrainingCard(
                  text: 'teste',
                ),
              ],
            ),
            H2Text(text: 'Criar novo treino')
          ],
        ),
      ),
      backgroundColor: Colors.green.shade400,
    );
  }
}
