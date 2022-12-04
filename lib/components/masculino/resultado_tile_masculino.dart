import 'package:flutter/material.dart';

class ResultadoTileMasculino extends StatelessWidget {
  const ResultadoTileMasculino({
    Key? key,
    required this.cor,
    required this.titulo,
    required this.subtitulo,
    required this.resultado,
  }) : super(key: key);

  final Color cor;
  final String titulo;
  final String subtitulo;
  final String resultado;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: cor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titulo,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 200,
                child: Text(
                  subtitulo,
                  style: const TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ],
          ),
          Row(children: [
            Container(
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                resultado,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ]),
        ]),
      ]),
    );
  }
}
