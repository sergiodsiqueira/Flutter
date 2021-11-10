import 'dart:io';

main() {
  print("==== Digite uma idade ====");

  String input = stdin.readLineSync() ?? "";
  int idade = int.parse(input);

  if (idade <= 3) {
    print("Bebe");
  } else if (idade > 3 && idade <= 7) {
    print("Criança");
  } else if (idade > 7 && idade <= 18) {
    print("Adolecente");
  } else if (idade > 18 && idade <= 25) {
    print("Jovem");
  } else if (idade > 25 && idade <= 60) {
    print("Adulto");
  } else if (idade > 60) {
    print("Idoso");
  }
}
