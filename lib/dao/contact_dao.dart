import 'package:flutter_gym_app/database/app_database.dart';
import 'package:flutter_gym_app/models/exercice.dart';

import 'package:sqflite/sqflite.dart';

class TreinoDao {
  static const String tableSql = 'CREATE TABLE $_tableName('
      '$_id INTEGER PRIMARY KEY, '
      '$_name TEXT, '
      '$_accountNumber INTEGER)';
  static const String _tableName = 'Treinos';
  static const String _id = 'id';
  static const String _name = 'name';
  static const String _accountNumber = 'account_number';

  Future<int> save(Treino treino) async {
    final Database db = await getDatabase();
    Map<String, dynamic> treinoMap = _toMap(treino);
    return db.insert(_tableName, treinoMap);
  }

  Future<List<Treino>> findAll() async {
    final Database db = await getDatabase();
    final List<Map<String, dynamic>> result = await db.query(_tableName);
    List<Treino> treinos = _toList(result);
    return treinos;
  }

  Map<String, dynamic> _toMap(Treino treino) {
    final Map<String, dynamic> treinoMap = Map();
    // treinoMap[_name] = Treino.name;
    // treinoMap[_accountNumber] = Treino.accountNumber;
    return treinoMap;
  }

  List<Treino> _toList(List<Map<String, dynamic>> result) {
    final List<Treino> treinos = [];
    for (Map<String, dynamic> row in result) {
      final Treino treino = Treino(
        row[_id],
        row[_name],
        row[_accountNumber],
      );
      treinos.add(treino);
    }
    return treinos;
  }
}
