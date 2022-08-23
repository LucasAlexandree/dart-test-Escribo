import 'dart:io';

// Crio a função nomeada sumAll
String sumAll(val) {
  val = int.parse(val);
  int sum = 0;

  // Faço um loop até o valor informado
  for (int i = 0; i < val; i++) {
    // Verifico se o valor é dividendo por 3 ou 5
    if ((i % 3) == 0 || (i % 5) == 0) {
      // Caso o valor seja dividido acrescendo o valor atual do loop
      sum += i;
    }
  }
  return "A soma de todos os números múltiplos por 5 e 3 menores que " +
      val.toString() +
      " é " +
      sum.toString() +
      ".";
}

void main() {
  stdout.write("Digite um número inteiro: ");
  var val = stdin.readLineSync();

  stdout.write(sumAll(val));
}
