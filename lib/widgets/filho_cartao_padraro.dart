import 'package:flutter/material.dart';

import '../constants/constantes.dart';

class FilhoCartaoPadrao extends StatelessWidget {
  const FilhoCartaoPadrao({Key? key, required this.icone, required this.texto})
      : super(key: key);

  final IconData icone;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(icone, size: 100, color: Colors.white),
      Text(
        texto,
        style: estiloTexto,
      )
    ]);
  }
}
