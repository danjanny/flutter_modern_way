// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_modern_way/module/data_sources/i_user_data_source.dart'
    as _i3;
import 'package:flutter_modern_way/module/data_sources/user_data_source.dart'
    as _i4;
import 'package:flutter_modern_way/module/repositories/i_user_repository.dart'
    as _i5;
import 'package:flutter_modern_way/module/repositories/user_signup_repository.dart'
    as _i6;
import 'package:flutter_modern_way/module/use_case/i_user_use_case.dart' as _i7;
import 'package:flutter_modern_way/module/use_case/user_use_case.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.IUserDataSource>(() => _i4.UserDataSource());
    gh.factory<_i5.IUserRepository>(
        () => _i6.UserSignupRepository(gh<_i3.IUserDataSource>()));
    gh.factory<_i7.IUserUseCase>(
        () => _i8.UserUseCase(gh<_i5.IUserRepository>()));
    return this;
  }
}
