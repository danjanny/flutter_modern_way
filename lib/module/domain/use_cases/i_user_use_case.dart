import '../entities/user.dart';

abstract class IUserUseCase {
  List<User>? getAllUser();

  User? getUser(String? id);
}
