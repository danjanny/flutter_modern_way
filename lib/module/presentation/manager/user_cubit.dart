import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modern_way/module/domain/entities/user.dart';
import 'package:flutter_modern_way/module/presentation/manager/user_state.dart';

import '../../domain/use_cases/i_user_use_case.dart';

class UserCubit extends Cubit<UserState> {
  IUserUseCase? userUseCase;

  static get initialState => UserInitialState();

  UserCubit(this.userUseCase) : super(initialState);

  void addUserData() {
    emit(UserLoadingState());
    List<User>? users = userUseCase?.getAllUser();
    emit(UserLoadedState(users: users));
  }
}
