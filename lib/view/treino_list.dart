import 'package:flutter/material.dart';
import 'package:flutter_gym_app/models/exercice.dart';
import 'package:flutter_gym_app/view/treino_form.dart';

import '../dao/contact_dao.dart';

class TreinosList extends StatefulWidget {
  const TreinosList({Key? key}) : super(key: key);

  @override
  _TreinosListState createState() => _TreinosListState();
}

class _TreinosListState extends State<TreinosList> {
  final TreinoDao _dao = TreinoDao();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Treinos'),
      ),
      body: FutureBuilder<List<Treino>>(
        initialData: [],
        future: _dao.findAll(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              break;
            case ConnectionState.waiting:
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget>[
                    CircularProgressIndicator(),
                    Text('Loading')
                  ],
                ),
              );
              break;
            case ConnectionState.active:
              break;
            case ConnectionState.done:
              final List<Treino> treinos = snapshot.data;
              return ListView.builder(
                itemBuilder: (context, index) {
                  final Treino treino = treinos[index];
                  return _TreinoItem(treino);
                },
                itemCount: treinos.length,
              );
              break;
          }
          return const Text('Unknown error');
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => TreinoForm(),
                ),
              )
              .then(
                (value) => setState(() {}),
              );
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}

class _TreinoItem extends StatelessWidget {
  final Treino treino;

  _TreinoItem(this.treino);

  @override
  Widget build(BuildContext context) {
    return Card(
        // child: ListTile(
        //   title: Text(
        //     Treino.name,
        //     style: TextStyle(
        //       fontSize: 24.0,
        //     ),
        //   ),
        //   subtitle: Text(
        //     Treino.accountNumber.toString(),
        //     style: TextStyle(
        //       fontSize: 16.0,
        //     ),
        //   ),
        // ),
        );
  }
}
