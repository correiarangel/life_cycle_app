import 'dart:developer';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    log("// Home initState: Widget criado....");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    log("// Home didChangeDependencies: Dependências mudaram");
  }

  @override
  Widget build(BuildContext context) {
    log("/// Home Run ///> build: Rebuild do widget ");
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Home Ciclo de vida Flutter!',
              style: TextStyle(fontSize: 24),
            ),
          ),
         const SizedBox(height: 48),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton.icon(
              // ignore: prefer_const_constructors
              onPressed: () => Navigator.pushNamed(context, '/couter_page'),
              label: const Text('CONTADOR'),
            ),
          )
        ],
      ),
    );
  }

  @override
  void didUpdateWidget(HomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    log("/// Home   Widget ${oldWidget.key}");
    log("/// Home  didUpdateWidget: Widget atualizado...");
  }

  @override
  void deactivate() {
    super.deactivate();
    log("/// Home deactivate: Widget desativado ");
  }

  @override
  void dispose() {
    log("/// Home  dispose: Widget destruído");
    super.dispose();
  }
}
