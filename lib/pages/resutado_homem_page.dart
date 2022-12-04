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
              resultado: 'IMC $mostrarImc',
            ),
            const Divider(thickness: 1),
            const SizedBox(height: 10),
            ResultadoTileMasculino(
              cor: Colors.blue.shade50,
              titulo: 'Gasto Energético Basal',
              subtitulo:
                  'Seu corpo consome calorias naturalmente para manter seu bom funcionamento, esse valor corresponde as calorias que ele precisa.',
              resultado: '$mostrarTmb kcal',
            ),
            ResultadoTileMasculino(
              cor: Colors.blue.shade50,
              titulo: 'Ritina sedentária',
              subtitulo:
                  'Caso não faça nenhuma atividade física você precisará consumir esse valor em calorias',
              resultado: '$ncdSemAtividade kcal',
            ),
            ResultadoTileMasculino(
              cor: Colors.blue.shade50,
              titulo: 'Atividade Moderada',
              subtitulo:
                  'Considerando meia hora de caminhada, natação ou bicicleta, quatro vezes por semana',
              resultado: '$ncdComAtividadeModerada kcal',
            ),
            ResultadoTileMasculino(
              cor: Colors.blue.shade50,
              titulo: 'Atividade física Intensa',
              subtitulo:
                  'Considerando uma hora de corrida, pelo menos quatro vezes por semana. Exercícios aeróbicos geralmente exige mais energia do corpo',
              resultado: '$ncdComAtividadeIntensa kcal',
            ),
          ]),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: const Icon(Icons.save),
      //   onPressed: () {},
      // ),
    );
  }
}
