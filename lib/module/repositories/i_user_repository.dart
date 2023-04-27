import 'package:flutter_modern_way/module/user.dart';

abstract class IUserRepository {
  User? getUser(String? id);

  List<User>? getAllUser();
}
