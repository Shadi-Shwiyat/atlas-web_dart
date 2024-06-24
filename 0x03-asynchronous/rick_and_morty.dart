import 'package:http/http.dart' as http;
import 'dart:convert';

Future<String> printRmCharacters() async {
  try {
    final response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      print(data);
    } else {
      throw Exception('Error fetching RM data');
    }

    return 'Success fetching data';
  } catch (error) {
    return 'error caught: ${error}';
  }
}

main() async {
  await printRmCharacters();
}