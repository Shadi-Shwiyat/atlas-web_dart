import '9-palindrome.dart';

String longestPalindrome(String s) {
  String currentSubstring = '';

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 1; j <= s.length; j++) {
      currentSubstring = s.substring(i, j);
      // print('$currentSubstring');
      if (isPalindrome(currentSubstring)) {
        return currentSubstring;
      }
    }
  }

  return 'none';
}