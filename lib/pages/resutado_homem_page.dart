import 'package:flutter/material.dart';
import '../components/masculino/dados_do_usuario_masculino.dart';
import '../components/masculino/resultado_tile_masculino.dart';


class ResultadoHomemPage extends StatelessWidget {
  const ResultadoHomemPage(
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
        backgroundColor: Colors.blue,
        title: const Text('Resultado'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: ListView(children: [
            DadosDoUsuarioMasculino(
              cor: Colors.blue.shade100,
              peso: peso,
              altura: altura,
              idade: idade,
            ),
            const SizedBox(height: 10),
            const Divider(thickness: 1),
            const SizedBox(height: 10),
            ResultadoTileMasculino(
              cor: Colors.blue.shade50,
              titulo: resultado,
              subtitulo: consequencias,
              widget: 'IMC $mostrarImc',
            ),
            const Divider(thickness: 1),
            const SizedBox(height: 10),
            ResultadoTileMasculino(
              cor: Colors.blue.shade50,
              titulo: 'Gasto Energético Basal',
              subtitulo:
                  '(Calorias necessárias para o bom funcionamento do corpo)',
              widget: mostrarTmb,
            ),
            ResultadoTileMasculino(
              cor: Colors.blue.shade50,
              titulo: 'Nenhuma atividade física',
              subtitulo: '(Rotina Sedentária)',
              widget: ncdSemAtividade,
            ),
            ResultadoTileMasculino(
              cor: Colors.blue.shade50,
              titulo: 'Atividade Moderada',
              subtitulo:
                  '(meia hora de caminhada, natação ou bicicleta, quatro vezes por semana)',
              widget: ncdComAtividadeModerada,
            ),
            ResultadoTileMasculino(
              cor: Colors.blue.shade50,
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
