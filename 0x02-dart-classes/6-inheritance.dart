import '6-password.dart';
// import '5-json_to_user.dart';

class User extends Password{
  String? user_password;
  int? id;
  String? name;
  int? age;
  double? height;


  // Constructor
  User({this.id, this.name, this.age, this.height, this.user_password}) : super(password: user_password ?? '');

  // Methods
  String showName() {
    return 'Hello ${name}';
  }

  @override
  bool isValid() {
    if (user_password ==  null) {
      return false;
    } else if (user_password!.length < 8 || user_password!.length > 16) {
      return false;
    } else if (!user_password!.contains(RegExp(r'[A-Z]')) || !user_password!.contains(RegExp(r'[a-z]')) || !user_password!.contains(RegExp(r'[0-9]'))) {
      return false;
    } else {
      return true;
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: userJson['user_password'],
    );
  }

  String toString() {
    return 'User(id : ${id} ,name: ${name}, age: ${age}, height: ${height}, Password: ${this.isValid()})';
  }

  // Setters
  @override
  set setPassword(user_password) {
    super.password = user_password;
    this.user_password = user_password;
  }

  set userPassword(user_password) {
    this.user_password = user_password;
    super.password = user_password;
  }
}