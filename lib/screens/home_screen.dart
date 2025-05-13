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
                    _TopProductos(imagen: "assets/productos/pupc5.jpg"),
                    _TopProductos(imagen: "assets/productos/sm19.jpg"),
                    _TopProductos(imagen: "assets/productos/pubs4.jpg"),
                    _TopProductos(imagen: "assets/productos/t211.jpg"),
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
  final String imagen;
  const _TopProductos({super.key, required this.imagen});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Row(
            children: [
              Image(image: AssetImage(this.imagen), width: 80),
              Column(
                children: [
                  Text("NutriBites Beef Sticks", textAlign: TextAlign.start),
                  Text("Premium Fresh Natural Pet Treats"),
                  Text("13.2"),
                ],
              ),
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
