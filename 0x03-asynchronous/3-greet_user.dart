import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
    try {
    String userData = await fetchUserData();
    Map<String, dynamic> userMap = jsonDecode(userData);
    return 'Hello ${userMap['username']}';
  } catch (error) {
    print('error caught: ${error}');
    return 'error caught: ${error}';
  }
}

Future<String> loginUser() async {
  try {
    bool credentialsMatch = await checkCredentials();
    if (credentialsMatch) {
      print('There is a user: true');
      return await greetUser();
    } else {
      print('There is a user: true');
      return 'Wrong Credentials';
    }
  } catch (error) {
    print('error caught: ${error}');
    return 'error caught: ${error}';
  }
}