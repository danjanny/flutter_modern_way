import 'package:equatable/equatable.dart';

class User implements Equatable {
  String? id;
  String? fullName;
  String? email;
  String? phoneNumber;

  User({this.id, this.fullName, this.email, this.phoneNumber});

  @override
  String toString() {
    return 'User{id: $id, fullName: $fullName, email: $email, phoneNumber: $phoneNumber}';
  }

  @override
  List<Object?> get props => [id, fullName, email, phoneNumber];

  @override
  bool? get stringify => true;
}
