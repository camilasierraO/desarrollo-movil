import 'package:api_marvel/Screens/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:crypto/crypto.dart';
import '../Classes/character.dart';
import '../Widgets/character_item.dart';

class Principal extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const Principal({Key? key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  late Future<List<Character>> characters;

  @override
  void initState() {
    super.initState();
    characters = fetchMarvelCharacters();
  }

  Future<List<Character>> fetchMarvelCharacters() async {
    const publicKey = 'ead4747ffb208c5281361a1be8e8edcd';
    const privateKey = 'ae61ef6b1be8e96a09824fec5811ffa4435cf684';
    final timestamp = DateTime.now().millisecondsSinceEpoch.toString();
    final hash = generateMd5('$timestamp$privateKey$publicKey');
    const apiUrl = 'https://gateway.marvel.com/v1/public/characters';

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

      return charactersData
          .map<Character>((characterData) => Character.fromJson(characterData))
          .toList();
    } else {
      throw Exception('Error al obtener los personajes de Marvel');
    }
  }

  String generateMd5(String input) {
    return md5.convert(utf8.encode(input)).toString();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Character>>(
      future: characters,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator(); // Muestra un indicador de carga mientras se obtienen los datos.
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Text('No se encontraron personajes');
        } else {
          final characters = snapshot.data!;
          return Scaffold(
            body: ListView.builder(
              itemCount: characters.length,
              itemBuilder: (BuildContext context, int index) {
                final character = characters[index];
                return CharacterItem(
                    title: character.name,
                    image: character.image,
                    character: character,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Second(character: character)),
                      );
                    });
              },
            ),
          );
        }
      },
    );
  }
}
