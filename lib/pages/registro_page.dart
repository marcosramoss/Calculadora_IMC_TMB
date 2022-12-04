import 'package:flutter/material.dart';
import 'package:imctmbcalc/components/meu_drawer.dart';

class ResgistroPage extends StatelessWidget {
  const ResgistroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Resgistros'),
      ),
      drawer: const MeuDrawer(),
      body: ListView(children: const []),
    );
  }
}
