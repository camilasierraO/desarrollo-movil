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

  Widget _buildCircularCard(String title, int count) {
    return Column(
      children: [
        Text(
          title, // El texto
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),

        const SizedBox(height: 7.0), // Espacio entre la tarjeta y el texto
        Card(
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(50.0), // Hace que la tarjeta sea circular
          ),
          elevation: 5, // Sombra de la tarjeta
          child: SizedBox(
            width: 49.0, // Ancho fijo para todas las tarjetas
            height: 49.0, // Altura fija para todas las tarjetas
            child: Center(
              child: Text(
                count.toString(), // El número
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(1),
                child: Card(
                  elevation: 6,
                  shadowColor: const Color.fromARGB(255, 68, 26, 23),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(
                            10.0), // Espacio alrededor de la imagen
                        child: Container(
                          child: Image.network(
                            image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10, // Espacio entre la imagen y el título
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 7.0),
                        child: Text(
                          title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildCircularCard('Comics', comicsCount),
                        _buildCircularCard('Series', seriesCount),
                        _buildCircularCard('Stories', storiesCount),
                        _buildCircularCard('Events', eventsCount),
                      ],
                    ),
                    const SizedBox(
                        height:
                            35.0), // Agrega un espacio en blanco entre la descripción y las otras estadísticas
                    Container(
                      width: double
                          .infinity, // Ancho infinito para ocupar todo el ancho de la pantalla
                      height: 1.0, // Grosor de la línea
                      color: Colors.black, // Color de la línea
                    ),
                    const SizedBox(height: 20.0),
                    const Center(
                      child: Text("Descripción",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20),
                          textAlign: TextAlign
                              .center), // Centra el texto de la descripción
                    ),
                    const SizedBox(height: 20.0),
                    Center(
                      child: Text(description,
                          style: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 18),
                          textAlign: TextAlign
                              .center), // Centra el texto de la descripción
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Align(
                      alignment: Alignment.center, // Centra horizontalmente
                      child: Text(
                        'Series',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize:
                              16, // Tamaño de fuente para la palabra "Series"
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 90,
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
