import 'package:flutter_modern_way/module/user.dart';

/// use case : business logic yang berisi task yg dibutuhkan sistem utk perform
abstract class IUserUseCase {
  List<User>? getAllUser();

  User? getUser(String? id);
}
