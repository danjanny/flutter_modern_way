import 'package:flutter_modern_way/module/entities/user.dart';
import 'package:flutter_modern_way/module/use_case/i_user_use_case.dart';
import 'package:injectable/injectable.dart';

import '../repositories/i_user_repository.dart';

@Injectable(as: IUserUseCase)
class UserUseCase implements IUserUseCase {
  IUserRepository? userRepository;

  UserUseCase(this.userRepository);

  @override
  List<User>? getAllUser() => userRepository?.getAllUser();

  @override
  User? getUser(String? id) => userRepository?.getUser(id);
}
