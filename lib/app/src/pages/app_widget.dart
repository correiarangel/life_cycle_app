import 'package:flutter/material.dart';
import 'package:life_cycle_app/app/src/pages/home/home_page.dart';

import 'couter/couter_page.dart';


class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // Este widget é a raiz da aplicação.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ciclo de vida Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Definindo as rotas da aplicação
      initialRoute: '/',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => const HomePage(key: Key('__HomePage__')));
          case '/couter_page':
            return MaterialPageRoute(builder: (context) => const CounterPage());
          default:
            return MaterialPageRoute(
              builder: (context) => const Scaffold(
                body: Column(
                  children: [
                    Center(child: Text('Rota não encontrada')),
                  ],
                ),
              ),
            );
        }
      },
    );
  }
}

