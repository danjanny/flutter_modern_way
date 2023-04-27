import 'package:flutter_modern_way/module/data_sources/i_user_data_source.dart';
import 'package:flutter_modern_way/module/user.dart';

class UserDataSource implements IUserDataSources {
  @override
  List<User>? getAllUserData() {
    List<User> users = [
      User(
          id: "1",
          fullName: 'Ridha Danjanny',
          phoneNumber: '085817535079',
          email: 'ridhadanjanny.office@gmail.com'),
      User(
          id: "2",
          fullName: 'Meszieshan Dhenati M',
          phoneNumber: '089649977608',
          email: 'dmeszy@gmail.com'),
      User(
          id: "3",
          fullName: 'Adeenio M Ranjanny',
          phoneNumber: '081299988823',
          email: 'adeenio@gmail.com')
    ];

    return users;
  }

  @override
  User? getUserData(String? id) => User(
      id: id,
      fullName: 'Ridha Danjanny',
      phoneNumber: '085817535079',
      email: 'ridhadanjanny.office@gmail.com');
}
