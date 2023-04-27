import 'package:flutter_modern_way/module/domain/entities/user.dart';
import 'package:flutter_modern_way/module/domain/repositories/i_user_repository.dart';
import 'package:flutter_modern_way/module/domain/use_cases/i_user_use_case.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IUserUseCase)
class UserUseCase implements IUserUseCase {
  IUserRepository? userRepository;

  UserUseCase(this.userRepository);

  @override
  List<User>? getAllUser() {
    return userRepository?.getAllUser();
  }

  @override
  User? getUser(String? id) {
    return userRepository?.getUser(id);
  }
}
