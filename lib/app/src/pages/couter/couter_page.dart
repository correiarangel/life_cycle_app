import 'dart:developer';

import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    log("// initState: Widget criado....");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    log("didChangeDependencies: Dependências mudaram");
  }

  @override
  Widget build(BuildContext context) {
    log("/// Run ///> build: Rebuild do widget");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contador"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Contagem: $_counter',
              style: const TextStyle(fontSize: 24),
            ),
          ),
          ElevatedButton.icon(
            // ignore: prefer_const_constructors
            onPressed: () => Navigator.pop(context),
            label: const Text('VOLTAR'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
        tooltip: 'Incrementar',
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  void didUpdateWidget(CounterPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    log("/// didUpdateWidget: StetafullWidget atualizado...");
  }

  @override
  void deactivate() {
    super.deactivate();
    log("/// 1 deactivate: Widget desativado ");
  }

  @override
  void dispose() {
    log("//// 2 dispose: Widget destruído");
    super.dispose();
  }
}
