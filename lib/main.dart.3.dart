import 'package:flutter/material.dart';

// Importa as páginas do aplicaivo
import 'pages/homepage.dart';
import 'pages/stateless_model_1.0.dart';
import 'pages/stateful_model_1.0.dart';
import 'pages/unimplemented_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meus Apps Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      initialRoute: '/',

      routes: {
        // Página inicial
        '/': (context) => const HomePage(),

        // Página não implementada
        '/test': (context) => const TestPage(),

        // Página stateless
        '/stateless_model': (context) => const StatelessModelPage(),

        // Página stateful
        '/stateful_model': (context) => const StatefulModelPage(),
      },
    );
  }
}

