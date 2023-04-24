import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHandler {
  static final DatabaseHandler _databaseHandler = DatabaseHandler._internal();

  static Database? _database;

  factory DatabaseHandler() {
    return _databaseHandler;
  }

  DatabaseHandler._internal();

  Future<Database?> openDB() async {
    _database =
        await openDatabase(join(await getDatabasesPath(), 'customer.db'));
    return _database;
  }

  Future<dynamic> userLogin(String email, String password) async {
    var dbClient = _database;
    var value = await dbClient!.rawQuery(
        "SELECT * FROM user where email=$email and password=$password");
    return value;
  }
}
