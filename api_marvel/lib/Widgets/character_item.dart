import 'package:flutter/material.dart';

import '../Classes/character.dart';

class CharacterItem extends StatelessWidget {
  final String title;
  final String image;
  final Character character;
  final VoidCallback onTap;

  const CharacterItem({
    Key? key,
    required this.title,
    required this.image,
    required this.character,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200, // Tamaño deseado para cada card
      padding: const EdgeInsets.all(35.0), // Relleno para la tarjeta
      child: InkWell(
        onTap: onTap,
        child: Card(
          elevation: 6, // Agregar sombreado
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(12.0), // Hacer esquinas redondeadas
          ),
          child: Column(
            children: [
              Container(
                width: double
                    .infinity, // Para que la imagen ocupe todo el ancho de la tarjeta
                padding: const EdgeInsets.all(0.0), // Relleno para la imagen
                child: Image.network(
                  image,
                  fit:
                      BoxFit.cover, // Ajustar la imagen al tamaño de la tarjeta
                ),
              ),
              const SizedBox(
                height:
                    3, // Espacio entre la imagen y el texto (mayor espaciado)
              ),
              Padding(
                padding: const EdgeInsets.all(9.0), // Relleno para el título
                child: Text(
                  title,
                  textAlign: TextAlign.center, // Centrar el texto
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20, // Tamaño de fuente más grande
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
