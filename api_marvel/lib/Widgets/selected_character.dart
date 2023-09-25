import 'package:flutter/material.dart';

class SelectedCharacter extends StatelessWidget {
  final String title;
  final String image;
  final String description;
  final int comicsCount;
  final int seriesCount;
  final int storiesCount;
  final int eventsCount;
  final List<String> seriesNames;

  const SelectedCharacter({
    Key? key,
    required this.title,
    required this.image,
    required this.description,
    required this.comicsCount,
    required this.seriesCount,
    required this.storiesCount,
    required this.eventsCount,
    required this.seriesNames,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Card(
                  elevation: 30,
                  child: Column(
                    children: [
                      Image.network(image),
                      Text(title),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(description),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Comics: $comicsCount'),
                          Text('Series: $seriesCount'),
                          Text('Stories: $storiesCount'),
                          Text('Events: $eventsCount'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Series:'),
                    SizedBox(
                      height: 100,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: seriesNames.map((series) {
                            return Card(
                              child: Container(
                                padding: EdgeInsets.all(8),
                                child: Text(series),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
