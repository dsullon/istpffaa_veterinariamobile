import 'package:flutter/widgets.dart';

class MenuOption {
  final String ruta;
  final IconData icono;
  final String nombre;
  final Widget screen;

  MenuOption({
    required this.nombre,
    required this.ruta,
    required this.icono,
    required this.screen,
  });

  @override
  String toString() => this.nombre;
}
