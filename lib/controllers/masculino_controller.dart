import 'dart:math';

class Masculino {
  Masculino(
    this.imc,
    this.tmb,
    this.ncd, {
    required this.altura,
    required this.peso,
    required this.idade,
  });
  int altura;
  int peso;
  int idade;
  double imc;
  double tmb;
  double ncd;

  String calcularImc() {
    imc = peso / pow(altura / 100, 2);
    return imc.toStringAsFixed(1);
  }

  String mostrarResultado() {
    if (imc < 18.5) {
      return 'Você está com Magreza';
    } else if (imc > 18.5 && imc < 24.9) {
      return 'Você está com o peso normal';
    } else if (imc > 24.9 && imc < 29.9) {
      return 'Você está com sobrepeso';
    } else if (imc > 29.9 && imc < 34.9) {
      return 'Você está com obesidade grau I';
    } else if (imc > 34.9 && imc < 40) {
      return 'Você está com obesidade grau II';
    } else {
      return 'Você está com obesidade grau III';
    }
  }

  String mostrarConsequencias() {
    if (imc < 18.5) {
      return 'Como consequência você pode ter fadiga, stress, ansiedade';
    } else if (imc > 18.5 && imc < 24.9) {
      return 'Você tem menor risco de doenças cardíacas e vasculares';
    } else if (imc > 24.9 && imc < 29.9) {
      return 'Como consequência você pode fadiga, má circulação, varizes';
    } else if (imc > 29.9 && imc < 34.9) {
      return 'Como consequência você pode diabetes, angina, infarto, aterosclerose';
    } else if (imc > 34.9 && imc < 40) {
      return 'Como consequência você pode apneia do sono, falta de ar';
    } else {
      return 'Como consequência você pode refluxo, dificuldade para se mover, escaras, diabetes, infarto, AVC';
    }
  }

  String calcularTmbMasculino() {
    tmb = 66 + (13.7 * peso) + (5 * altura) - (6.8 * idade);
    return tmb.toStringAsFixed(1);
  }

  String ncdMasculinoSemAtividade() {
    tmb = 66 + (13.7 * peso) + (5 * altura) - (6.8 * idade);
    ncd = tmb + (tmb * 0.25);
    return ncd.toStringAsFixed(1);
  }

  String ncdMasculinoComAtividadeModerada() {
    tmb = 66 + (13.7 * peso) + (5 * altura) - (6.8 * idade);
    ncd = tmb + (tmb * 0.35);
    return ncd.toStringAsFixed(1);
  }

  String ncdMasculinoComAtividadeIntensa() {
    tmb = 66 + (13.7 * peso) + (5 * altura) - (6.8 * idade);
    ncd = tmb + (tmb * 0.45);
    return ncd.toStringAsFixed(1);
  }
}
