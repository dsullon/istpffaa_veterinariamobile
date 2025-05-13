import 'package:flutter/material.dart';
import 'package:veterinaria/screens/account_screen.dart';
import 'package:veterinaria/screens/home_screen.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    void onItemTap(int idx) {
      switch (idx) {
        case 0:
          var route = MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          );
          Navigator.push(context, route);
        default:
          var route = MaterialPageRoute(
            builder: (context) => const AccountScreen(),
          );
          Navigator.push(context, route);
      }
    }
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: "Mi Cuenta",
        ),
      ],
      onTap: onItemTap,
    );
  }
}
