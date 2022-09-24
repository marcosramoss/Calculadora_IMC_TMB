import 'package:flutter/material.dart';

class DadosDoUsuarioMasculino extends StatelessWidget {
  const DadosDoUsuarioMasculino({
    Key? key,
    required this.peso,
    required this.altura,
    required this.idade,
    required this.cor,
  }) : super(key: key);

  final double peso;
  final double altura;
  final double idade;
  final Color cor;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Container(
          margin: const EdgeInsets.only(right: 5),
          padding: const EdgeInsets.symmetric(vertical: 7),
          decoration: BoxDecoration(
            color: cor,
            borderRadius: BorderRadius.circular(6),
          ),
          child: ListTile(
            title: Text(
              peso.toStringAsFixed(0),
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: const Text('Kg'),
          ),
        ),
      ),
      Expanded(
          child: Container(
        margin: const EdgeInsets.only(left: 5, right: 5),
        padding: const EdgeInsets.symmetric(vertical: 7),
        decoration: BoxDecoration(
          color: Colors.blue[100],
          borderRadius: BorderRadius.circular(6),
        ),
        child: ListTile(
          title: Text(
            altura.toStringAsFixed(0),
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          trailing: const Text('Cm'),
        ),
      )),
      Expanded(
        child: Container(
          margin: const EdgeInsets.only(left: 5),
          padding: const EdgeInsets.symmetric(vertical: 7),
          decoration: BoxDecoration(
            color: Colors.blue[100],
            borderRadius: BorderRadius.circular(6),
          ),
          child: ListTile(
            title: Text(
              idade.toStringAsFixed(0),
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: const Text('Anos'),
          ),
        ),
      ),
    ]);
  }
}
