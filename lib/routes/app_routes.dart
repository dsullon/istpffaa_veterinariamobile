import 'package:flutter/material.dart';
import 'package:veterinaria/models/menu_option.dart';
import 'package:veterinaria/screens/screens.dart';

class AppRoutes {
  static final menuOptions = <MenuOption>[
    MenuOption(
      nombre: "Home",
      ruta: "home",
      icono: Icons.home,
      screen: HomeScreen(),
    ),
    MenuOption(
      nombre: "Mi cuenta",
      ruta: "account",
      icono: Icons.account_box,
      screen: AccountScreen(),
    ),
    MenuOption(
      nombre: "Mis datos",
      ruta: "profile",
      icono: Icons.person_pin_outlined,
      screen: ProfileScreen(),
    ),
    MenuOption(
      nombre: "Mis compras",
      ruta: "myorders",
      icono: Icons.shop,
      screen: OrdersScreen(),
    ),
    MenuOption(
      nombre: "Mis direcciones",
      ruta: "myaddress",
      icono: Icons.location_on_outlined,
      screen: AddressScreen(),
    ),
    MenuOption(
      nombre: "Trámites",
      ruta: "mycomplaints",
      icono: Icons.document_scanner_outlined,
      screen: ComplaintsScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getRoutes() {
    Map<String, Widget Function(BuildContext)> routes = {};
    for (var menu in menuOptions) {
      routes.addAll({menu.ruta: (BuildContext context) => menu.screen});
    }
    return routes;
  }
}
