import 'package:flutter/material.dart';
import 'package:veterinaria/screens/home_screen.dart';
import 'package:veterinaria/themes/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Veterinaria App',
      home: HomeScreen(),
      theme: AppTheme.themeData,
    );
  }
}
