import 'dart:io';

void main() {
  int op;

  do {
    print("\nSeleccione una opción:");
    print("1. Convertir de Celsius a Fahrenheit");
    print("2. Convertir de Fahrenheit a Celsius");
    op = int.parse(stdin.readLineSync()!);

    if (op == 1) {
      convertirCelsiusAFahrenheit();
    } else if (op == 2) {
      convertirFahrenheitACelsius();
    } else {
      print("Opción inválida.");
    }
  } while (op != 1 && op != 2);
}

void convertirFahrenheitACelsius() {
  print("Ingrese la temperatura en grados Fahrenheit:");
  double fahrenheit = double.parse(stdin.readLineSync()!);
  double celsius = (fahrenheit - 32) / 1.8;
  print("$fahrenheit grados Fahrenheit son $celsius grados Celsius.");
}

void convertirCelsiusAFahrenheit() {
  print("Ingrese la temperatura en grados Celsius:");
  double celsius = double.parse(stdin.readLineSync()!);
  double fahrenheit = (celsius * 1.8) + 32;
  print("$celsius grados Celsius son $fahrenheit grados Fahrenheit.");
}
