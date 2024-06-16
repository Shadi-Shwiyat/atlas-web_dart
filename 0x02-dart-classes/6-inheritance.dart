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
    return 'User(id : ${id} ,name: ${name}, age: ${age}, height: ${height}, Password: ${isValid(user_password)})';
  }

  // Setters
  @override
  set setPassword(user_password) => this.user_password = user_password;
}