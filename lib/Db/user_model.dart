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
