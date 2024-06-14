void outer(String name, String id) {
  String inner() {
    return "Hello Agent";
  }

  int spaceIndex = name.indexOf(' ');
  if (spaceIndex != -1) {
    String lastInitial = name.substring(spaceIndex + 1, spaceIndex + 2);
    String firstName = name.substring(0, spaceIndex);
    print('${inner()} $lastInitial.$firstName your id is $id');
  } else {
    print("NO SPACES IN NAMEEEE");
  }

}