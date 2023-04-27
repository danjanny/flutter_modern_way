import '../entities/user.dart';

abstract class IUserRepository {
  List<User>? getAllUser();

  User? getUser(String? id);
}
