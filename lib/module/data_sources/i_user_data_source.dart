import 'package:flutter_modern_way/module/user.dart';

abstract class IUserDataSources {
  User? getUserData(String? id);

  List<User>? getAllUserData();
}
