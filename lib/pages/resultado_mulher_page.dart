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
              resultado: 'IMC $mostrarImc',
            ),
            const Divider(thickness: 1),
            const SizedBox(height: 10),
            ResultadoTileFeminino(
              cor: Colors.pink.shade50,
              titulo: 'Gasto Energético Basal',
              subtitulo:
                  'Seu corpo consome calorias naturalmente para manter seu bom funcionamento, esse valor corresponde as calorias que ele precisa.',
              resultado: '$mostrarTmb kcal',
            ),
            ResultadoTileFeminino(
              cor: Colors.pink.shade50,
              titulo: 'Rotina Sedentária',
              subtitulo:
                  'Caso não faça nenhuma atividade física você precisará consumir esse valor em calorias',
              resultado: '$ncdSemAtividade kcal',
            ),
            ResultadoTileFeminino(
              cor: Colors.pink.shade50,
              titulo: 'Atividade Moderada',
              subtitulo:
                  'Considerando meia hora de caminhada, natação ou bicicleta, quatro vezes por semana',
              resultado: '$ncdComAtividadeModerada kcal',
            ),
            ResultadoTileFeminino(
              cor: Colors.pink.shade50,
              titulo: 'Atividade física Intensa',
              subtitulo:
                  'Considerando uma hora de corrida, pelo menos quatro vezes por semana. Exercícios aeróbicos geralmente exige mais energia do corpo',
              resultado: '$ncdComAtividadeIntensa kcal',
            ),
          ]),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.pink,
      //   child: const Icon(Icons.save),
      //   onPressed: () {},
      // ),
    );
  }
}
