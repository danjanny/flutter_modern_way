import 'package:flutter_modern_way/module/data_sources/i_user_data_source.dart';
import 'package:flutter_modern_way/module/repositories/i_user_repository.dart';
import 'package:flutter_modern_way/module/user.dart';

class UserLoginRepository implements IUserRepository {
  IUserDataSources? userDataSources;

  UserLoginRepository(this.userDataSources);

  @override
  List<User>? getAllUser() {
    return userDataSources?.getAllUserData();
  }

  @override
  User? getUser(String? id) {
    return userDataSources?.getUserData(id);
  }
}
