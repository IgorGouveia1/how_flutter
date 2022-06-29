import 'package:flutter/material.dart';
import 'package:flutter_gym_app/components/gym_button.dart';
import 'package:flutter_gym_app/components/h2_text.dart';

import '../components/textfield.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(54.0),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: H2Text(text: 'Nome*'),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: GymTextField(
                labeltext: 'Nome Completo',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: H2Text(text: 'Data de Aniversário*'),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: GymTextField(
                labeltext: 'DD/MM/AAAA',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: H2Text(text: 'E-mail*'),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: GymTextField(
                labeltext: 'E-mail',
              ),
            ),
            GymButton(text: 'Cadastrar')
          ],
        )),
      ),
      backgroundColor: Colors.green.shade400,
    );
  }
}
