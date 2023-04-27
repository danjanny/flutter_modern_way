import 'package:flutter_modern_way/module/data/data_sources/i_user_data_source.dart';
import 'package:flutter_modern_way/module/domain/entities/user.dart';
import 'package:flutter_modern_way/module/domain/repositories/i_user_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IUserRepository)
class UserLoginRepository implements IUserRepository {
  IUserDataSource? userDataSource;

  UserLoginRepository(this.userDataSource);

  @override
  List<User>? getAllUser() {
    return userDataSource?.getAllUser();
  }

  @override
  User? getUser(String? id) {
    return userDataSource?.getUser(id);
  }
}
