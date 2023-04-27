import 'package:equatable/equatable.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object?> get props => [];
}

class AddUserEvent extends UserEvent {
  final String? userId;

  const AddUserEvent({this.userId});
}
