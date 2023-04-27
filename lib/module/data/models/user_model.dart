import 'package:flutter/foundation.dart';
import 'package:flutter_modern_way/module/domain/entities/user.dart';

class UserModel extends User {
  UserModel(
      {@required id,
      @required fullName,
      @required email,
      @required phoneNumber})
      : super(
            id: id, fullName: fullName, email: email, phoneNumber: phoneNumber);

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        id: json['id'],
        fullName: json['fullName'],
        email: json['email'],
        phoneNumber: json['phoneNumber']);
  }
}
