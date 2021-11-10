import 'dart:io';

main() {
  bool continuar = true;
  List<String> lista = [];

  while (continuar) {
    print('Digite o nome ou para sair deixe em branco:');
    var nome = stdin.readLineSync() ?? '';

    if (nome == '') {
      continuar = false;
    } else {
      lista.add(nome);
      print("\n");
    }
  }

  print(lista);
  print("\n");

  int vQtd;
  vQtd = lista.length;
  print("Você digitou $vQtd nomes!");

  lista.remove('Sergio');
  vQtd = lista.length;
  print("Total de nomes $vQtd!");

  print("O primeiro nome da lista é: " + lista[0]);

  lista.removeAt(0);
  print("O primeiro nome da lista agora é: " + lista[0]);
}
