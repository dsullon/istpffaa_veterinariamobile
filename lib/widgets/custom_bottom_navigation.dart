import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    void onItemTap(int idx) {
      switch (idx) {
        case 0:
          Navigator.pushReplacementNamed(context, "home");
        default:
          Navigator.pushReplacementNamed(context, "account");
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
