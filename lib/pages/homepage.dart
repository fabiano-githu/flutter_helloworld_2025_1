import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'May App',

          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            const Text(
              'Bem-vindo ao Meu App!',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const Text('Essa é uma página de teste.'),

            const SizedBox(height: 32.0),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/stateless_model');
              },
              child: const Text('Ir para Página Stateless'),
            ),

            const SizedBox(height: 16.0),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/stateful_model');
              },
              child: const Text('Ir para Página Stateful'),
            ),
          ],
        ),
      ),

      bottomNavigationBar: const BottomAppBar(
        color: Colors.blue,
        child: SizedBox(
          height: 10.0,
          child: Center(
            child: Text(
              '© Rodapé do Aplicativo',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}