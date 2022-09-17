import 'package:flutter/material.dart';

class BotaoArredondado extends StatelessWidget {
  const BotaoArredondado({
    Key? key,
    required this.icone,
    this.aoPressionar,
    required this.cor,
  }) : super(key: key);
  final Color cor;
  final IconData icone;
  final void Function()? aoPressionar;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
      elevation: 6,
      fillColor: cor,
      onPressed: aoPressionar,
      child: Icon(
        icone,
        color: Colors.white,
      ),
    );
  }
}
