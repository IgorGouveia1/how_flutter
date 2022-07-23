import 'package:flutter/material.dart';
import 'package:flutter_gym_app/dao/contact_dao.dart';
import 'package:flutter_gym_app/models/exercice.dart';

class TreinoForm extends StatefulWidget {
  @override
  _TreinoFormState createState() => _TreinoFormState();
}

class _TreinoFormState extends State<TreinoForm> {
  final TextEditingController _exercicioController = TextEditingController();
  final TextEditingController _serieController = TextEditingController();
  final TreinoDao _dao = TreinoDao();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Treino'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _exercicioController,
              decoration: const InputDecoration(
                labelText: 'Full name',
              ),
              style: const TextStyle(
                fontSize: 24.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextField(
                controller: _serieController,
                decoration: const InputDecoration(
                  labelText: 'Account number',
                ),
                style: const TextStyle(
                  fontSize: 24.0,
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  child: const Text('Create'),
                  onPressed: () {
                    final String name = _exercicioController.text;
                    final String accountNumber = _serieController.text;
                    final Treino newTreino = Treino(0, name, accountNumber);
                    _dao.save(newTreino).then((id) => Navigator.pop(context));
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
