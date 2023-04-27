import 'package:flutter_modern_way/module/data_sources/i_user_data_source.dart';
import 'package:flutter_modern_way/module/entities/user.dart';
import 'package:flutter_modern_way/module/repositories/i_user_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IUserRepository)
class UserLoginRepository implements IUserRepository {
  IUserDataSource? userDataSource;

  UserLoginRepository(this.userDataSource);

  @override
  List<User>? getAllUser() => userDataSource?.getAllUser();

  @override
  User? getUser(String? id) => userDataSource?.getUser(id);
}
