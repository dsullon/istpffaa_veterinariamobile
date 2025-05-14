import 'package:flutter/material.dart';
import 'package:veterinaria/themes/app_theme.dart';
import 'package:veterinaria/widgets/custom_bottom_navigation.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Center(
              child: ClipOval(
                child: FadeInImage(
                  placeholder: AssetImage("assets/noimage.jpeg"),
                  image: NetworkImage(
                    "https://static.wikia.nocookie.net/marvelcentral/images/9/97/Tony-Stark.jpg/revision/latest?cb=20130429010603",
                  ),
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Text(
              "Tony Stark",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppTheme.azul900,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(10),
                children: [
                  ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text("Mis datos"),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                  ListTile(
                    leading: Icon(Icons.shop),
                    title: Text("Mis compras"),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                  ListTile(
                    leading: Icon(Icons.map),
                    title: Text("Mis direcciones"),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}
