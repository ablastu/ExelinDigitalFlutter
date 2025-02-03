import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Posts App',
      debugShowCheckedModeBanner: false, // Oculta el banner de "Debug"
      theme: ThemeData(
        primarySwatch: Colors.blue, // Color principal de la app
      ),
      home: HomeScreen(), // La pantalla inicial es HomeScreen
    );
  }
}
