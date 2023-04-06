import 'package:pharmacy_hn_clone/Db/database_handler.dart';
import 'dart:async';
import 'package:pharmacy_hn_clone/Db/user_model.dart';

class LoginCtr {
  DatabaseHandler con = DatabaseHandler();

//insertion

  var dbClient;

  Future<User?> getLogin(String user, String password) async {
    var res = await dbClient.rawQuery(
        "SELECT * FROM user WHERE customer = '$user' and password = '$password'");

    if (res.length > 0) {
      return User.fromJson(res.first);
    }

    return null;
  }
}
