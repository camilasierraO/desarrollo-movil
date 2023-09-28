import 'package:flutter/material.dart';
import '../Classes/character.dart';
import '../Widgets/selected_character.dart';

class Second extends StatelessWidget {
  final Character character;

  const Second({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Color.fromARGB(255, 187, 11, 11),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: SelectedCharacter(
          title: character.name,
          image: character.image,
          description: character.description,
          comicsCount: character.comicsCount,
          seriesCount: character.seriesCount,
          storiesCount: character.storiesCount,
          eventsCount: character.eventsCount,
          seriesNames: character.firstThreeSeriesNames,
        ));
  }
}
