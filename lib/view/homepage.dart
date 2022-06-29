import 'package:flutter/material.dart';
import 'package:flutter_gym_app/components/gym_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('lib/assets/dumbbell.png'),
            const Text(
              'GYM APP',
              style: TextStyle(fontSize: 54, fontWeight: FontWeight.bold),
            ),
            const CircleAvatar(
              backgroundImage: AssetImage('lib/assets/circleavatar.jpg'),
              radius: 128,
            ),
            const Text(
              'Já possui cadastro?',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const GymButton(text: 'Entrar'),
            const Text('Se não possui',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const GymButton(text: 'Cadastrar'),
          ],
        ),
      ),
      backgroundColor: Colors.green.shade400,
    );
  }
}
