import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../core/models/Character.dart';

class RickAndMortyService extends GetxService {
  final RICK_AND_MORTY_URL = Uri.https('www.rickandmortyapi.com', '/api/character');

  final String done = 'done';
  // devolvera una lista de characteres
  Future<List<Character>> getCharacters() async {
    var response = await http
        .get(RICK_AND_MORTY_URL);
    if (response.statusCode == 200) {
      // decode json and returns a dynamic object and we pass
      // the key that we want, results
      var characters = jsonDecode(response.body)['results'];
      print(characters);
      return characters;
    } else {
      print('Characters request failed with status: ${response.statusCode}.');
    }
    return jsonDecode(response.body)['results'];
  }
}
