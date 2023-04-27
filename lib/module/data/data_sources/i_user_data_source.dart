import '../../domain/entities/user.dart';

abstract class IUserDataSource {
  List<User>? getAllUser();

  User? getUser(String? id);
}
