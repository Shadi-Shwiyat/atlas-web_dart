bool isPalindrome(String s) {
  String reversedString = s.split('').reversed.join('');

  if (reversedString != s || s.length < 3) {
    return false;
  } else {
    return true;
  }
}