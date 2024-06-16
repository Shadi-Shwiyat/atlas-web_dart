class Password {
  String password = '';

  // Constructor
  Password({required this.password});

  // Methods
  bool isValid() {
    if (password.length < 8 || password.length > 16) {
      return false;
    } else if (!password.contains(RegExp(r'[A-Z]')) || !password.contains(RegExp(r'[a-z]')) || !password.contains(RegExp(r'[0-9]'))) {
      return false;
    } else {
      return true;
    }
  }

  String toString() {
    return 'Your Password is: ${password}';
  }

  // Getters
  String get get_password => password;

  // Setters
  set setPassword(password) => this.password = password;
}
