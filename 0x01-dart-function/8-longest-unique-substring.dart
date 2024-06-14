String longestUniqueSubstring(String str) {
  String substring = '';
  String currentSubstring = '';

  for (int i = 0; i < str.length; i++) {
    if (currentSubstring.contains(str[i])) {
      currentSubstring = currentSubstring.substring(currentSubstring.indexOf(str[i]) + 1);
    }
    currentSubstring += str[i];
    if (currentSubstring.length > substring.length) {
      substring = currentSubstring;
    }
  }

  return substring;
}
