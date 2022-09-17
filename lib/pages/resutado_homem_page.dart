import 'package:flutter/material.dart';

class ResultadoHomemPage extends StatelessWidget {
  const ResultadoHomemPage({
    Key? key,
    required this.mostrarImc,
    required this.consequencias,
    required this.resultado,
    required this.mostrarTmb,
    required this.ncdSemAtividade,
    required this.ncdComAtividadeModerada,
    required this.ncdComAtividadeIntensa,
    required this.peso,
    required this.altura,
    required this.idade,
  }) : super(key: key);
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
        title: const Text('Resultado'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: ListView(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(right: 5),
                      padding: const EdgeInsets.symmetric(vertical: 7),
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
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
                        trailing: const Text('anos'),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Divider(thickness: 1),
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.only(bottom: 15),
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(6),
                ),
                child: ListTile(
                  title: Text(
                    resultado,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Container(
                      padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        'IMC $mostrarImc',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      )),
                  subtitle: Text(
                    consequencias,
                    style: const TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),
              const Divider(thickness: 1),
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.only(bottom: 15),
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(6),
                ),
                child: ListTile(
                  title: const Text(
                    'Gasto Energético Basal',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Container(
                      padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        'TMB $mostrarTmb',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      )),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 15),
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(6),
                ),
                child: ListTile(
                  title: const Text(
                    'Nenhuma atividade física',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text(
                    '(Rotina Sedentária)',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  trailing: Container(
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      ncdSemAtividade,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 15),
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(6),
                ),
                child: ListTile(
                  title: const Text(
                    'Atividade Moderada',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text(
                    '(meia hora de caminhada, natação ou bicicleta, quatro vezes por semana)',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  trailing: Container(
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      ncdComAtividadeModerada,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 15),
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(6),
                ),
                child: ListTile(
                  title: const Text(
                    'Atividade física intensa',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text(
                    '(uma hora de corrida, pelo menos quatro vezes por semana)',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  trailing: Container(
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      ncdComAtividadeIntensa,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.share),
      //   onPressed: () {},
      // ),
    );
  }
}
