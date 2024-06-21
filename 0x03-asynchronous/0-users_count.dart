import '0-util.dart';

Future<void> usersCount() {
  Future<int> users_count = fetchUsersCount();
  return users_count;
}