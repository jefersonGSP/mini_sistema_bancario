import '../agencia.dart';

class Agencias {
  static List<Agencia> _listaDeAgencia = [];

  static void cadastar(Agencia agencia) {
    _listaDeAgencia.add(agencia);
  }

  static Iterable<Agencia> buscar(int numero) {
    return _listaDeAgencia.where((numero) => numero.numero == numero);
  }

  static void editar(Agencia vAgencia) {
    bool localizado = _listaDeAgencia.contains(vAgencia);
    if (localizado) {
      var agencias = buscar(vAgencia.numero);
      for (Agencia antigo in agencias) {
        antigo.numero = vAgencia.numero;
        antigo.gerente = vAgencia.gerente;
        antigo.endereco = vAgencia.endereco;
      }
    }
  }

  static void remover(int numero) {
    _listaDeAgencia.removeWhere((vAgencia) => vAgencia.numero == numero);
  }
}
