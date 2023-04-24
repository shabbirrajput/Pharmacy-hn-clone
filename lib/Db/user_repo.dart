import 'package:sqflite/sqflite.dart';

class UserRepo {
  void createTable(Database? db) {
    db?.execute('''CREATE TABLE IF NOT EXISTS CUSTOMERSDATA (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  name TEXT,
  email VARCHAR(255),
  mobile INTEGER,
  password VARCHAR(255))
''');
  }

  Future<void> getUsers(Database? db) async {}
}
