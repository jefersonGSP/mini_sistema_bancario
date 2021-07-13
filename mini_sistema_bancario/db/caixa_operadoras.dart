import '../caixa_operador.dart';

class CaixasOperadoras {
  static List<CaixaOperador> _listaDeCaixas = [];

  static void cadastar(CaixaOperador operador) {
    _listaDeCaixas.add(operador);
  }

  static Iterable<CaixaOperador> buscar(int matricula) {
    return _listaDeCaixas.where((operador) => operador.matricula == matricula);
  }

  static void editar(CaixaOperador vOperador) {
    bool localizado = _listaDeCaixas.contains(vOperador);
    if (localizado) {
      var caixas = buscar(vOperador.matricula);
      for (CaixaOperador antigo in caixas) {
        antigo.nome = vOperador.nome;
        antigo.ramal = vOperador.ramal;
        antigo.salario = vOperador.salario;
        antigo.email = vOperador.email;
        antigo.endereco = vOperador.endereco;
      }
    }
  }

  static void remover(int matricula) {
    _listaDeCaixas.removeWhere((vOperador) => vOperador.matricula == matricula);
  }
}
