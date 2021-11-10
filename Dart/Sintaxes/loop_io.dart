import 'dart:io';

main() {
  bool continuar = true;

  while (continuar) {
    String texto = '';

    print('Digite seu texto:');
    texto = stdin.readLineSync() ?? '';

    if (texto == 'sair') {
      continuar = false;
      print('Finalizado');
    } else {
      print(texto);
    }
  }
}
