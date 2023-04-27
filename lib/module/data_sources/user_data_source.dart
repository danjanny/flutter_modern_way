import 'package:flutter_modern_way/module/data_sources/i_user_data_source.dart';
import 'package:flutter_modern_way/module/entities/user.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IUserDataSource)
class UserDataSource implements IUserDataSource {
  @override
  List<User>? getAllUser() {
    return [
      User(
          id: '1',
          fullName: 'Ridha Danjanny',
          email: 'ridhadanjanny.mail@gmail.com',
          phoneNumber: '085817535079'),
      User(
          id: '2',
          fullName: 'Meszieshan Dhenati Monikasari',
          email: 'dmeszy@gmail.com',
          phoneNumber: '089649977608')
    ];
  }

  @override
  User? getUser(String? id) {
    return User(
        id: id,
        fullName: 'Ridha Danjanny',
        email: 'ridhadanjanny.mail@gmail.com',
        phoneNumber: '085817535079');
  }
}
