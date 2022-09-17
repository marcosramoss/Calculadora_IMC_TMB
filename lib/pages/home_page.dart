import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:imctmbcalc/controllers/feminino_controller.dart';
import '../constants/constantes.dart';
import '../controllers/masculino_controller.dart';
import '../widgets/botao_arredondado.dart';
import '../widgets/botao_calcular.dart';
import '../widgets/cartao_padrao.dart';
import '../widgets/filho_cartao_padraro.dart';
import 'resultado_mulher_page.dart';
import 'resutado_homem_page.dart';

enum Sexo {
  masculino,
  feminino,
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Sexo sexoSelecionado = Sexo.masculino;

  int altura = 175;
  int peso = 60;
  int idade = 20;
  void decrementarIdade() => setState(() => idade--);
  void incrementarIdade() => setState(() => idade++);
  void decrementarPeso() => setState(() => peso--);
  void incrementarPeso() => setState(() => peso++);

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(systemNavigationBarColor: Colors.white));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(corClaraPadrao),
        centerTitle: true,
        title: const Text(
          'Calculadora IMC - TMB',
          style: TextStyle(color: Color(corPadrao)),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Expanded(
            child: Row(children: [
              Expanded(
                child: CartaoPadrao(
                  aoPressionar: () {
                    setState(() {
                      sexoSelecionado = Sexo.masculino;
                    });
                  },
                  cor: sexoSelecionado == Sexo.masculino
                      ? const Color(corCartaoMasculino)
                      : const Color(corClaraPadrao),
                  filho: const FilhoCartaoPadrao(
                    icone: Icons.male,
                    texto: 'Masculino',
                  ),
                ),
              ),
              Expanded(
                child: CartaoPadrao(
                  aoPressionar: () {
                    setState(() {
                      sexoSelecionado = Sexo.feminino;
                    });
                  },
                  cor: sexoSelecionado == Sexo.feminino
                      ? const Color(corCartaoFeminino)
                      : const Color(corClaraPadrao),
                  filho: const FilhoCartaoPadrao(
                    icone: Icons.female,
                    texto: 'Feminino',
                  ),
                ),
              ),
            ]),
          ),
          // ================================================= MASCULINO
          sexoSelecionado == Sexo.masculino
              ? Expanded(
                  child: CartaoPadrao(
                    cor: const Color(corClaraPadrao),
                    filho: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Altura',
                            style: estiloTexto,
                            textAlign: TextAlign.center,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            mainAxisAlignment: MainAxisAlignment.center,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(altura.toString(), style: estiloNumero),
                              const SizedBox(width: 10),
                              const Text('cm'),
                            ],
                          ),
                          Slider(
                            activeColor: Colors.blue,
                            inactiveColor: const Color(corInativaCartaoPadrao),
                            value: altura.toDouble(),
                            onChanged: (double novoValor) {
                              setState(() {
                                altura = novoValor.round();
                              });
                            },
                            min: 120,
                            max: 220,
                          ),
                        ]),
                  ),
                )
              // ================================================= MASCULINO
              : Expanded(
                  child: CartaoPadrao(
                    cor: const Color(corClaraPadrao),
                    filho: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Altura',
                            style: estiloTexto,
                            textAlign: TextAlign.center,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            mainAxisAlignment: MainAxisAlignment.center,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(altura.toString(), style: estiloNumero),
                              const SizedBox(width: 10),
                              const Text('cm'),
                            ],
                          ),
                          Slider(
                            activeColor: Colors.pink,
                            inactiveColor: const Color(corInativaCartaoPadrao),
                            value: altura.toDouble(),
                            onChanged: (double novoValor) {
                              setState(() {
                                altura = novoValor.round();
                              });
                            },
                            min: 120,
                            max: 220,
                          ),
                        ]),
                  ),
                ),
          Expanded(
            child: Row(children: [
              // ================================================= MASCULINO
              sexoSelecionado == Sexo.masculino
                  ? Expanded(
                      child: CartaoPadrao(
                        cor: const Color(corClaraPadrao),
                        filho: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Peso', style: estiloTexto),
                              Text(peso.toString(), style: estiloNumero),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  BotaoArredondado(
                                    cor: Colors.blue,
                                    icone: Icons.remove,
                                    aoPressionar: decrementarPeso,
                                  ),
                                  const SizedBox(width: 10),
                                  BotaoArredondado(
                                    cor: Colors.blue,
                                    icone: Icons.add,
                                    aoPressionar: incrementarPeso,
                                  )
                                ],
                              ),
                            ]),
                      ),
                    )
                  // ================================================= FEMININO
                  : Expanded(
                      child: CartaoPadrao(
                        cor: const Color(corClaraPadrao),
                        filho: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Peso', style: estiloTexto),
                              Text(peso.toString(), style: estiloNumero),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  BotaoArredondado(
                                    cor: Colors.pink,
                                    icone: Icons.remove,
                                    aoPressionar: decrementarPeso,
                                  ),
                                  const SizedBox(width: 10),
                                  BotaoArredondado(
                                    cor: Colors.pink,
                                    icone: Icons.add,
                                    aoPressionar: incrementarPeso,
                                  )
                                ],
                              ),
                            ]),
                      ),
                    ),
              // ================================================= MASCULINO
              sexoSelecionado == Sexo.masculino
                  ? Expanded(
                      child: CartaoPadrao(
                        cor: const Color(corClaraPadrao),
                        filho: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Idade', style: estiloTexto),
                              Text(idade.toString(), style: estiloNumero),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    BotaoArredondado(
                                      cor: Colors.blue,
                                      icone: Icons.remove,
                                      aoPressionar: decrementarIdade,
                                    ),
                                    const SizedBox(width: 10),
                                    BotaoArredondado(
                                        cor: Colors.blue,
                                        icone: Icons.add,
                                        aoPressionar: incrementarIdade)
                                  ])
                            ]),
                      ),
                    )
                  // ================================================= FEMININO
                  : Expanded(
                      child: CartaoPadrao(
                        cor: const Color(corClaraPadrao),
                        filho: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Idade', style: estiloTexto),
                              Text(idade.toString(), style: estiloNumero),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    BotaoArredondado(
                                      cor: Colors.pink,
                                      icone: Icons.remove,
                                      aoPressionar: decrementarIdade,
                                    ),
                                    const SizedBox(width: 10),
                                    BotaoArredondado(
                                        cor: Colors.pink,
                                        icone: Icons.add,
                                        aoPressionar: incrementarIdade)
                                  ])
                            ]),
                      ),
                    ),
            ]),
          ),
          sexoSelecionado == Sexo.masculino
              ? BotaoCalcular(
                  cor: const Color(corClaraPadrao),
                  texto: 'CALCULAR',
                  aoPressionar: () {
                    Masculino calc = Masculino(
                      (0),
                      (0),
                      (0),
                      altura: altura,
                      peso: peso,
                      idade: idade,
                    );
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ResultadoHomemPage(
                          peso: calc.peso.toDouble(),
                          altura: calc.altura.toDouble(),
                          idade: calc.idade.toDouble(),
                          mostrarImc: calc.calcularImc(),
                          consequencias: calc.mostrarConsequencias(),
                          resultado: calc.mostrarResultado(),
                          mostrarTmb: calc.calcularTmbMasculino(),
                          ncdSemAtividade: calc.ncdMasculinoSemAtividade(),
                          ncdComAtividadeModerada:
                              calc.ncdMasculinoComAtividadeModerada(),
                          ncdComAtividadeIntensa:
                              calc.ncdMasculinoComAtividadeIntensa(),
                        ),
                      ),
                    );
                  },
                )
              : BotaoCalcular(
                  cor: const Color(corClaraPadrao),
                  texto: 'CALCULAR',
                  aoPressionar: () {
                    Feminino calc = Feminino(
                      (0),
                      (0),
                      (0),
                      altura: altura,
                      peso: peso,
                      idade: idade,
                    );
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ResultadoMulherPage(
                          peso: calc.peso.toDouble(),
                          altura: calc.altura.toDouble(),
                          idade: calc.idade.toDouble(),
                          mostrarImc: calc.calcularImc(),
                          consequencias: calc.mostrarConsequencias(),
                          resultado: calc.mostrarResultado(),
                          mostrarTmb: calc.calcularTmbFeminino(),
                          ncdSemAtividade: calc.ncdFemininoSemAtividade(),
                          ncdComAtividadeModerada:
                              calc.ncdFemininoComAtividadeModerada(),
                          ncdComAtividadeIntensa:
                              calc.ncdFemininoComAtividadeIntensa(),
                        ),
                      ),
                    );
                  },
                )
        ],
      ),
    );
  }
}
