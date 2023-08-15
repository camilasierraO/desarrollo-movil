import 'dart:io';

void main() {
  int op;

  do {
    print("\nSeleccione una opción:");
    print("1. Convertir de Celsius a Fahrenheit");
    print("2. Convertir de Fahrenheit a Celsius");
    op = int.parse(stdin.readLineSync()!);

    if (op == 1) {
      convertirCF();
    } else if (op == 2) {
      convertirFC();
    } else {
      print("Opción inválida.");
    }
  } while (op != 1 && op != 2);
}

void convertirFC() {
  print("Ingrese la temperatura en grados Fahrenheit:");
  double f = double.parse(stdin.readLineSync()!);
  double c = (f - 32) / 1.8;
  print("$f grados Fahrenheit son $c grados Celsius.");
}

void convertirCF() {
  print("Ingrese la temperatura en grados Celsius:");
  double c = double.parse(stdin.readLineSync()!);
  double f = (c * 1.8) + 32;
  print("$c grados Celsius son $f grados Fahrenheit.");
}
