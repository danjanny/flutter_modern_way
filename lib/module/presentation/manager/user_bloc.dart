import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modern_way/module/domain/entities/user.dart';
import 'package:flutter_modern_way/module/domain/use_cases/i_user_use_case.dart';
import 'package:flutter_modern_way/module/presentation/manager/user_event.dart';
import 'package:flutter_modern_way/module/presentation/manager/user_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  static get initialState => UserInitialState();

  IUserUseCase? userUseCase;

  UserBloc(this.userUseCase) : super(initialState) {
    on<AddUserEvent>(_addUserEvent);
  }

  FutureOr<void> _addUserEvent(AddUserEvent event, Emitter<UserState> emit) {
    String? userId = event.userId;
    emit(UserLoadingState());
    List<User>? users = userUseCase?.getAllUser();
    emit(UserLoadedState(users: users));
  }
}
