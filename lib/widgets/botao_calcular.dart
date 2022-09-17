import 'package:flutter/material.dart';

import '../constants/constantes.dart';

class BotaoCalcular extends StatelessWidget {
  const BotaoCalcular(
      {Key? key,
      required this.texto,
      required this.aoPressionar,
      required this.cor})
      : super(key: key);
  final String texto;
  final Color cor;
  final void Function() aoPressionar;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: aoPressionar,
      child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(10),
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: cor,
          ),
          child: Text(
            texto,
            style: estiloBotaoCalcular,
            textAlign: TextAlign.center,
          )),
    );
  }
}
