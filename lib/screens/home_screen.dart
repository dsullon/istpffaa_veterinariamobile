import 'package:flutter/material.dart';
import 'package:veterinaria/themes/app_theme.dart';
import 'package:veterinaria/widgets/custom_bottom_navigation.dart';
import 'package:veterinaria/widgets/subtitle.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  width: double.infinity,
                  child: Text(
                    "Veterinaria BestPet",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: AppTheme.azul950,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                    child: FadeInImage(
                      height: 280,
                      image: NetworkImage(
                        "https://facultades.unab.cl/cienciasdelavida/wp-content/uploads/2022/02/Medicina-Veterinaria.webp",
                      ),
                      placeholder: AssetImage("assets/noimage.jpeg"),
                    ),
                  ),
                ),
                Subtitle(titulo: "Servicios"),
                Container(
                  height: 160,
                  padding: EdgeInsets.all(5),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          _Servicio(
                            titulo: "Consulta",
                            imagen: "assets/servicios/consulta.jpg",
                          ),
                          _Servicio(
                            titulo: "Vacunación",
                            imagen: "assets/servicios/vacunacion.jpg",
                          ),
                          _Servicio(
                            titulo: "Peluquería",
                            imagen: "assets/servicios/peluqueria.jpg",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Subtitle(titulo: "Top de productos"),
                Column(
                  children: [
                    _TopProductos(
                      nombre: "NutriBites Beef Sticks",
                      descripcion:
                          "Magna do reprehenderit ipsum ad cupidatat esse excepteur ullamco laborum consequat aliquip.",
                      precio: "13.20",
                      imagen: "assets/productos/pupc5.jpg",
                      favoritos: "50",
                      calificacion: "3",
                    ),
                    _TopProductos(
                      nombre: "Fórmula Natural Fresh Meat - Gatos Senior",
                      descripcion:
                          "Aliqua quis commodo occaecat aliquip aliquip cupidatat voluptate dolore incididunt exercitation ipsum.",
                      precio: "43.00",
                      imagen: "assets/productos/sm19.jpg",
                      favoritos: "150",
                      calificacion: "2",
                    ),
                    _TopProductos(
                      nombre: "Ultrametrin 600",
                      descripcion:
                          "Duis labore elit do aliquip consequat proident irure culpa labore labore.",
                      precio: "7.60",
                      imagen: "assets/productos/pubs4.jpg",
                      favoritos: "60",
                      calificacion: "4",
                    ),
                    _TopProductos(
                      nombre: "Suralan X-Large (40 - 60kg)",
                      descripcion:
                          "Sunt consequat sit tempor cupidatat nostrud incididunt ipsum non.",
                      precio: "85.90",
                      imagen: "assets/productos/t211.jpg",
                      favoritos: "200",
                      calificacion: "5",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _TopProductos extends StatelessWidget {
  final String nombre;
  final String descripcion;
  final String imagen;
  final String precio;
  final String favoritos;
  final String calificacion;

  const _TopProductos({
    required this.imagen,
    required this.nombre,
    required this.descripcion,
    required this.precio,
    required this.favoritos,
    required this.calificacion,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(image: AssetImage(imagen), width: 80),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nombre,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppTheme.azul900,
                      ),
                    ),
                    Text(descripcion),
                    Text(precio, style: TextStyle(color: AppTheme.azul800)),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(favoritos, style: TextStyle(color: AppTheme.azul700)),
              Icon(Icons.favorite, color: AppTheme.azul700),
              const SizedBox(width: 5),
              Text(calificacion, style: TextStyle(color: AppTheme.azul800)),
              Icon(Icons.star, color: AppTheme.azul800),
            ],
          ),
        ],
      ),
    );
  }
}

class _Servicio extends StatelessWidget {
  final String titulo;
  final String imagen;

  const _Servicio({required this.titulo, required this.imagen});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Image(image: AssetImage(this.imagen), fit: BoxFit.cover),
          SizedBox(height: 5),
          Text(this.titulo),
        ],
      ),
    );
  }
}
