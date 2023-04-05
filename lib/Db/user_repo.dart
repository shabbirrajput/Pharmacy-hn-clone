import 'package:sqflite/sqflite.dart';

class UserRepo {
  void createTable(Database? db) {
    db?.execute('''CREATE TABLE IF NOT EXISTS CUSTOMERSDATA (
  id INTEGER AUTO_INCREMENT,
  name TEXT,
  email VARCHAR(255),
  mobile INTEGER,
  password VARCHAR(255))
''');
  }

  Future<void> getUsers(Database? db) async {
    final List<Map<String, dynamic>> maps = await db!.query('CUSTOMERSDATA');

    print(maps);
  }
}
