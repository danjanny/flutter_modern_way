import 'package:flutter_modern_way/module/data/data_sources/i_user_data_source.dart';
import 'package:flutter_modern_way/module/domain/entities/user.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IUserDataSource)
class UserDataSource implements IUserDataSource {
  @override
  List<User>? getAllUser() => [
        User(
            id: '1',
            phoneNumber: '085817535079',
            email: 'ridhadanjanny.mail@gmail.com',
            fullName: 'Ridha Danjanny'),
        User(
            id: '2',
            phoneNumber: '089649977608',
            email: 'dmeszy@gmail.com',
            fullName: 'Meszieshan Dhenati')
      ];

  @override
  User? getUser(String? id) => User(
      id: '1',
      phoneNumber: '085817535079',
      email: 'ridhadanjanny.mail@gmail.com',
      fullName: 'Ridha Danjanny');
}
