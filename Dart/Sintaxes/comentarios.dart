import "dart:io";

//Programa que calcula o IMC
main() {
  print('Informe o peso: (Exe.: 70.6)');
  String peso = stdin.readLineSync() ?? "";

  print('Informe o altura: (Exe.: 1.70)');
  String altura = stdin.readLineSync() ?? "";
  altura = double.parse(altura).toStringAsPrecision(2);

  imprimirImc(calculoImc(peso, altura));
}

//Função que recebe peso e altura e retorna o IMC
calculoImc(peso, altura) {
  return double.parse(peso) / (double.parse(altura) * double.parse(altura));
}

//Impressão do resultado do IMC passado por parametro
imprimirImc(double imc) {
  print('');
  print('Resultado:');

  if (imc < 18.5) {
    print('Abaixo do peso');
  } else if (imc >= 18.5 && imc < 24.9) {
    print('Peso normal');
  } else if (imc >= 25 && imc < 29.9) {
    print('Sobrepeso');
  } else if (imc >= 30 && imc < 34.9) {
    print('Obeso Grau I');
  } else if (imc > 35 && imc < 39.9) {
    print('Obeso Grau II');
  } else {
    print('Obseso Grau III');
  }
}
