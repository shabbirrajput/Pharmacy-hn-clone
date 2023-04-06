import 'dart:ffi';

class UserModel {
  late final String? name;
  late final String? email;
  late final String? mobile;
  late final String? password;

  UserModel(
    String _name,
    String _email,
    String _mobno,
    String _pass, {
    this.name,
    this.email,
    this.mobile,
    this.password,
  });

  UserModel.fromJson(Map<String, dynamic> json, this.mobile, this.name,
      this.email, this.password) {
    name = json['name'];
    email = json['email'];
    mobile = json['mobile'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['mobile'] = mobile;
    data['password'] = password;
    return data;
  }
}

/*class User {
  int id;
  late final String? email;
  late final String? password;

  User(
    String _email,
    String _pass, {
    required this.id,
    this.email,
    this.password,
  });

  User.fromJson(Map<String, dynamic> json, this.id, this.email, this.password) {
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    return data;
  }
}*/
class User {
  Int? id;
  String? email;
  String? password;

  User({this.id, this.email, this.password});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    password = json['Password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['email'] = email;
    data['Password'] = password;
    return data;
  }
}
