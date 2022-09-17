import 'dart:math';

class Feminino {
  Feminino(
    this.imc,
    this.tmb,
    this.ncd, {
    required this.altura,
    required this.peso,
    required this.idade,
  });
  final int altura;
  final int peso;
  final int idade;
  double imc;
  double tmb;
  double ncd;

  String calcularImc() {
    imc = peso / pow(altura / 100, 2);
    return imc.toStringAsFixed(1);
  }

  String mostrarResultado() {
    if (imc < 18.5) {
      return 'Magreza';
    } else if (imc > 18.5 && imc < 24.9) {
      return 'Peso Normal';
    } else if (imc > 24.9 && imc < 29.9) {
      return 'Sobrepeso';
    } else if (imc > 29.9 && imc < 34.9) {
      return 'Obesidade grau I';
    } else if (imc > 34.9 && imc < 40) {
      return 'Obesidade grau II';
    } else {
      return 'Obesidade grau III';
    }
  }

  String mostrarConsequencias() {
    if (imc < 18.5) {
      return 'Fadiga, stress, ansiedade';
    } else if (imc > 18.5 && imc < 24.9) {
      return 'Menor risco de doenças cardíacas e vasculares';
    } else if (imc > 24.9 && imc < 29.9) {
      return 'Fadiga, má circulação, varizes';
    } else if (imc > 29.9 && imc < 34.9) {
      return 'Diabetes, angina, infarto, aterosclerose';
    } else if (imc > 34.9 && imc < 40) {
      return 'Apneia do sono, falta de ar';
    } else {
      return 'Refluxo, dificuldade para se mover, escaras, diabetes, infarto, AVC';
    }
  }

  String calcularTmbFeminino() {
    tmb = 665 + (9.6 * peso) + (1.8 * altura) - (4.7 * idade);
    return tmb.toStringAsFixed(1);
  }

  String ncdFemininoSemAtividade() {
    tmb = 665 + (9.6 * peso) + (1.8 * altura) - (4.7 * idade);
    ncd = tmb + (tmb * 0.20);
    return ncd.toStringAsFixed(1);
  }

  String ncdFemininoComAtividadeModerada() {
    tmb = 665 + (9.6 * peso) + (1.8 * altura) - (4.7 * idade);
    ncd = tmb + (tmb * 0.30);
    return ncd.toStringAsFixed(1);
  }

  String ncdFemininoComAtividadeIntensa() {
    tmb = 665 + (9.6 * peso) + (1.8 * altura) - (4.7 * idade);
    ncd = tmb + (tmb * 0.40);
    return ncd.toStringAsFixed(1);
  }
}
