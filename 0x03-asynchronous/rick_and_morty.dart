import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    String? url = 'https://rickandmortyapi.com/api/character';
    while (url != null) {
      final response = await http.get(Uri.parse(url));
      final data = jsonDecode(response.body);
      for (var character in data['results']) {
        print(character['name']);
      }
      url = data['info']['next'];
    }
  } catch (e) {
    print('error caught: $e');
  }
}
