import 'package:flutter_modern_way/module/entities/user.dart';

abstract class IUserUseCase {
  List<User>? getAllUser();

  User? getUser(String? id);
}
