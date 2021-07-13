void main() {
  var lista = List.generate(10, (index) => index * index);

  // var listPares = lista.where((numero) => numero % 2 == 1);
  int reducao = lista.reduce((acumulador, numero) => acumulador += numero);

  // print(lista);
  // print(listPares);
  // print(reducao);

  // for (int indice = 0; indice < lista.length; indice++) {
  //   print(lista[indice]);
  // }

  // for (int indice = lista.length - 1; indice >= 0; indice--) {
  //   print(lista[indice]);
  // }

  // for (int indice = 0; indice < lista.length; indice++) {
  //   bool ePar = (lista[indice] % 2 == 0);
  //   if (ePar) {
  //     print(lista[indice]);
  //   }
  // }

  // for (int indice = lista.length - 1; indice >= 0; indice--) {
  //   print(lista[indice]);
  // }

  // for (var numero in lista) {
  //   print(numero);
  // }

  //////////////////////////////////////////////
  // For (Normal/Tradicional)
  // For in
  //ForEach

  /*  var lista = ["Java", "C#", "Dart", "Ruby"]; */

  // for (var ling in lista) {
  //   print(ling);
  // }

  // lista.forEach(imprimirFormatado);
  // lista.forEach(verificarDesejos);
  /*  lista.forEach(verificarDesejos); */
}

void imprimirFormatado(String valor) {
  print(valor.toUpperCase());
}

void verificarDesejos(String valor) {
  var desejos = ["Ruby", "Java"];
  bool queroAprender = desejos.contains(valor);
  print(
      (queroAprender) ? "Quero aprender $valor" : "Não quero aprender $valor");
}
