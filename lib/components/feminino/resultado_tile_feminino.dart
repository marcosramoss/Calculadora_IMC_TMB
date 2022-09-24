import 'package:flutter/material.dart';

class ResultadoTileFeminino extends StatelessWidget {
  const ResultadoTileFeminino({
    Key? key,
    required this.cor,
    required this.titulo,
    required this.subtitulo,
    required this.widget,
  }) : super(key: key);

  final Color cor;
  final String titulo;
  final String subtitulo;
  final String widget;

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
          Column(children: [
            Container(
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: Colors.pink[100],
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                widget,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ]),
        ]),
      ]),
    );
  }
}
