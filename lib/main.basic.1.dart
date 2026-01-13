import 'package:flutter/material.dart';

// Inicializa o aplicativo
void main() {
  runApp(const MyApp());
}

// widget do aplicativo
class MyApp extends StatelessWidget {
  // Construtor
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Olá Mundo!',
      theme: ThemeData(
        // Cor da barra de ferramentas do Android/IOs
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // Mostra (true) / oculta (false) banner de Debug
      debugShowCheckedModeBanner: false,
      // Rota da página inicial
      initialRoute: '/',
      // Todas as rotas do aplicativo estarão aqui
      routes: {
        '/': (context) => const Home(),
        '/test': (context) => const Test(),
        // '/contacts': (context) => const Contact(),
      },
    );
  }
}

// widget da página inicial
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // Base para componentes visuais
    return Scaffold(
      // Barra superior
      appBar: AppBar(
        title: const Text(
          'Hello World',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),

      // Corpo / conteúdo da página
      body: const Text('Conteúdo de Olá Mundo!'),

      // Rodapé
      bottomNavigationBar: const Text('Rodapé de Hello World!'),
    );
  }
}

// Base para uma página (em branco)
class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
