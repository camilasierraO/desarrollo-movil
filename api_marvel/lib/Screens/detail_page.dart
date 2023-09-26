import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:crypto/crypto.dart';
import '../Classes/character.dart';
import '../Widgets/selected_character.dart';

class Second extends StatefulWidget {
  const Second({Key? key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  List<Character> characters = [];

  @override
  void initState() {
    super.initState();
    fetchMarvelCharacters();
  }

  Future<void> fetchMarvelCharacters() async {
    const publicKey = 'ead4747ffb208c5281361a1be8e8edcd';
    const privateKey = 'ae61ef6b1be8e96a09824fec5811ffa4435cf684';
    final timestamp = DateTime.now().millisecondsSinceEpoch.toString();
    final hash = generateMd5('$timestamp$privateKey$publicKey');
    const apiUrl = 'https://gateway.marvel.com/v1/public/characters/1009144';

    Map<String, String> queryParams = {
      'ts': timestamp,
      'apikey': publicKey,
      'hash': hash,
    };

    String queryString = Uri(queryParameters: queryParams).query;
    final response = await http.get(Uri.parse('$apiUrl?$queryString'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final charactersData = data['data']['results'];

      setState(() {
        characters = charactersData
            .map<Character>(
                (characterData) => Character.fromJson(characterData))
            .toList();
      });
    } else {
      // Manejo de errores, por ejemplo, mostrar un mensaje de error
      print('Error al obtener los personajes de Marvel');
    }
  }

  String generateMd5(String input) {
    return md5.convert(utf8.encode(input)).toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: characters.map((character) {
          return Expanded(
            child: SelectedCharacter(
              title: character.name,
              image: character.image,
              description: character.description,
              comicsCount: character.comicsCount,
              seriesCount: character.seriesCount,
              storiesCount: character.storiesCount,
              eventsCount: character.eventsCount,
              seriesNames: character.firstThreeSeriesNames,
            ),
          );
        }).toList(),
      ),
    );
  }
}
