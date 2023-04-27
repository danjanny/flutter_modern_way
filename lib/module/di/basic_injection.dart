import 'package:flutter_modern_way/module/data_sources/i_user_data_source.dart';
import 'package:flutter_modern_way/module/data_sources/user_data_source.dart';
import 'package:flutter_modern_way/module/repositories/i_user_repository.dart';
import 'package:flutter_modern_way/module/repositories/user_login_repository.dart';
import 'package:flutter_modern_way/module/use_cases/i_user_use_case.dart';
import 'package:flutter_modern_way/module/use_cases/user_use_case.dart';

class BasicInjection {
  static IUserUseCase? provideUseCase() {
    IUserRepository? userRepository = _provideRepository();
    return UserUseCase(userRepository);
  }

  static IUserRepository? _provideRepository() {
    IUserDataSources? userDataSource = _provideUserDataSource();
    return UserLoginRepository(userDataSource);
  }

  static IUserDataSources? _provideUserDataSource() {
    return UserDataSource();
  }
}
