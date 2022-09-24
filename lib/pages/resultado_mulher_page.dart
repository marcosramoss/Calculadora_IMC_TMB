import 'package:flutter/material.dart';
import '../components/feminino/dados_do_usuario_feminino.dart';
import '../components/feminino/resultado_tile_feminino.dart';

class ResultadoMulherPage extends StatelessWidget {
  const ResultadoMulherPage(
      {Key? key,
      required this.mostrarImc,
      required this.consequencias,
      required this.resultado,
      required this.mostrarTmb,
      required this.ncdSemAtividade,
      required this.ncdComAtividadeModerada,
      required this.ncdComAtividadeIntensa,
      required this.peso,
      required this.altura,
      required this.idade})
      : super(key: key);

  final double peso;
  final double altura;
  final double idade;
  final String mostrarImc;
  final String resultado;
  final String consequencias;
  final String mostrarTmb;
  final String ncdSemAtividade;
  final String ncdComAtividadeModerada;
  final String ncdComAtividadeIntensa;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink,
        title: const Text('Resultado'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: ListView(children: [
            DadosDoUsuarioFeminino(
              cor: Colors.pink.shade100,
              peso: peso,
              altura: altura,
              idade: idade,
            ),
            const SizedBox(height: 10),
            const Divider(thickness: 1),
            const SizedBox(height: 10),
            ResultadoTileFeminino(
              cor: Colors.pink.shade50,
              titulo: resultado,
              subtitulo: consequencias,
              widget: 'IMC $mostrarImc',
            ),
            const Divider(thickness: 1),
            const SizedBox(height: 10),
            ResultadoTileFeminino(
              cor: Colors.pink.shade50,
              titulo: 'Gasto Energético Basal',
              subtitulo:
                  '(Calorias necessárias para o bom funcionamento do corpo)',
              widget: mostrarTmb,
            ),
            ResultadoTileFeminino(
              cor: Colors.pink.shade50,
              titulo: 'Nenhuma atividade física',
              subtitulo: '(Rotina Sedentária)',
              widget: ncdSemAtividade,
            ),
            ResultadoTileFeminino(
              cor: Colors.pink.shade50,
              titulo: 'Atividade Moderada',
              subtitulo:
                  '(meia hora de caminhada, natação ou bicicleta, quatro vezes por semana)',
              widget: ncdComAtividadeModerada,
            ),
            ResultadoTileFeminino(
              cor: Colors.pink.shade50,
              titulo: 'Atividade física Intensa',
              subtitulo:
                  '(uma hora de corrida, pelo menos quatro vezes por semana)',
              widget: ncdComAtividadeIntensa,
            ),
          ]),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.share),
      //   onPressed: () {},
      // ),
    );
  }
}
