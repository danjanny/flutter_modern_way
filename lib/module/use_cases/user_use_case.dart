import 'package:flutter_modern_way/module/repositories/i_user_repository.dart';
import 'package:flutter_modern_way/module/use_cases/i_user_use_case.dart';
import 'package:flutter_modern_way/module/user.dart';

class UserUseCase implements IUserUseCase {
  IUserRepository? userRepository;

  UserUseCase(this.userRepository);

  @override
  User? getUser(String? id) {
    return userRepository?.getUser(id);
  }

  @override
  List<User>? getAllUser() {
    return userRepository?.getAllUser();
  }
}
