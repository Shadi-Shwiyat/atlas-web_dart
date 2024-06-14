String longestUniqueSubstring(String str) {
  String substring = '';

  for (int i = 0; i < str.length; i++) {
    if (substring.contains(str[i])) {
      substring = '';
    }
    substring += str[i];
    for (int j = i + 1; j < str.length; j++) {
      // bool containsCharacter = substring.contains('D');
      if (str[i] == str[j]) {
        substring = '';
        break;
      } else if (substring.contains(str[j]) || substring.contains(str[i])) {
        break;
      } else {
        substring += str[j];
      }
    }
  }

  return substring;
}