import 'package:flutter/material.dart';
import 'package:veterinaria/widgets/custom_bottom_navigation.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text("Cuenta de usuario")),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}
