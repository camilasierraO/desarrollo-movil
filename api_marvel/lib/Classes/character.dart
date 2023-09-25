class Character {
  final String name;
  final String image;
  final String description;
  final int comicsCount;
  final int seriesCount;
  final int storiesCount;
  final int eventsCount;
  final List<String> firstThreeSeriesNames;

  Character({
    required this.name,
    required this.image,
    required this.description,
    required this.comicsCount,
    required this.seriesCount,
    required this.storiesCount,
    required this.eventsCount,
    required this.firstThreeSeriesNames,
  });

  factory Character.fromJson(Map<String, dynamic> json) {
    // Obtener los nombres de las primeras tres series del listado de series
    final List<dynamic> seriesList = json['series']['items'];
    List<String> firstThreeSeriesNames = [];
    for (int i = 0; i < 3 && i < seriesList.length; i++) {
      firstThreeSeriesNames.add(seriesList[i]['name']);
    }

    return Character(
      name: json['name'] ?? '',
      image: "${json['thumbnail']['path']}.${json['thumbnail']['extension']}",
      description: json['description'] ?? 'd',
      comicsCount: json['comics']['available'] ?? 0,
      seriesCount: json['series']['available'] ?? 0,
      storiesCount: json['stories']['available'] ?? 0,
      eventsCount: json['events']['available'] ?? 0,
      firstThreeSeriesNames: firstThreeSeriesNames,
    );
  }
}
