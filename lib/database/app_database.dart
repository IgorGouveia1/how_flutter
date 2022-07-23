import 'package:flutter_gym_app/dao/contact_dao.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> getDatabase() async {
  final String path = join(await getDatabasesPath(), 'GymApp.db');
  return openDatabase(
    path,
    onCreate: (db, version) {
      db.execute(TreinoDao.tableSql);
    },
    version: 1,
  );
}
