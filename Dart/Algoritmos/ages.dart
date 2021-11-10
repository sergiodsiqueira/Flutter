import 'dart:io';

main() {
  print("==== Digite uma idade ====");

  String input = stdin.readLineSync() ?? "";
  int idade = int.parse(input);

  if (idade >= 18) {
    print("Maior de Idade");
  } else {
    print("Menor de Idade");
  }
}
