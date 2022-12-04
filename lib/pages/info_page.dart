import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/icone_splash.png',
              scale: 1,
              alignment: Alignment.center,
            ),
            const SizedBox(height: 30),
            const Text(
              'Olá, me chamo Marcos Ramos e desenvolvi esse app para ajuda-lo em seus calculos de taxas metabólicas. Já faz um tempo que eu procuro um aplicativo que vai direto ao ponto e com uma interface simples e intuitiva, então decidi criar o meu próprio app IMC TMB. Espero que seja útil para todos!',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
