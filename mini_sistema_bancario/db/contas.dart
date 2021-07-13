import '../conta_corrente.dart';
import '../conta_poupanca.dart';

class Contas {
  static List<ContaCorrente> _listaDaContaCorrente = [];
  static List<ContaPoupanca> _listaDaContaPoupanca = [];

  static void cadastrarcc(ContaCorrente contaCorrente) {
    _listaDaContaCorrente.add(contaCorrente);
  }

  static void cadastrarcp(ContaPoupanca contaPoupanca) {
    _listaDaContaPoupanca.add(contaPoupanca);
  }

  static Iterable<ContaCorrente> buscarcc(double limite) {
    return _listaDaContaCorrente
        .where((contaCorrente) => contaCorrente.limite == limite);
  }

  static Iterable<ContaPoupanca> buscarcp(int aniversarioDeRendimento) {
    return _listaDaContaPoupanca.where((contaPoupanca) =>
        contaPoupanca.aniversarioDeRendimento == aniversarioDeRendimento);
  }

  static void editarcc(ContaCorrente vContaCorrente) {
    bool localizado = _listaDaContaCorrente.contains(vContaCorrente);
    if (localizado) {
      var contaCorrente = buscarcc(vContaCorrente.limite);
      for (ContaCorrente antiga in contaCorrente) {
        antiga.limite = vContaCorrente.limite;
        antiga.numero = vContaCorrente.numero;
        antiga.agencia = vContaCorrente.agencia;
        antiga.cliente = vContaCorrente.cliente;
      }
    }
  }

  static void editarcp(ContaPoupanca vContaPoupanca) {
    bool localizado = _listaDaContaPoupanca.contains(vContaPoupanca);
    if (localizado) {
      var contaPoupanca = buscarcp(vContaPoupanca.aniversarioDeRendimento);
      for (ContaPoupanca antiga in contaPoupanca) {
        antiga.aniversarioDeRendimento = vContaPoupanca.aniversarioDeRendimento;
        antiga.rendimento = vContaPoupanca.rendimento;
        antiga.numero = vContaPoupanca.numero;
        antiga.agencia = vContaPoupanca.agencia;
        antiga.cliente = vContaPoupanca.cliente;
      }
    }
  }

  static void removercc(double limite) {
    _listaDaContaCorrente
        .removeWhere((vContaCorrente) => vContaCorrente.limite == limite);
  }

  static void removercp(int aniversarioDeRendimento) {
    _listaDaContaPoupanca.removeWhere((vContaPoupanca) =>
        vContaPoupanca.aniversarioDeRendimento == aniversarioDeRendimento);
  }
}
