class User {
  String? userName;
  String? password;
  String? authType;
  String? ipAddress;

  User({this.userName, this.password, this.authType, this.ipAddress});

  User.fromJson(Map<String, dynamic> json) {
    userName = json['userName'];
    password = json['password'];
    authType = json['authType'];
    ipAddress = json['ipAddress'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userName'] = this.userName;
    data['password'] = this.password;
    data['authType'] = this.authType;
    data['ipAddress'] = this.ipAddress;
    return data;
  }
}