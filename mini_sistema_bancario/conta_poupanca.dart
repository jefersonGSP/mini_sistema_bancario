import 'agencia.dart';
import 'conta.dart';
import 'pessoa.dart';

class ContaPoupanca extends Conta {
  int _aniversarioDeRendimento;
  double _rendimento;

  ContaPoupanca(this._aniversarioDeRendimento, String vNumero, Agencia vAgencia,
      Pessoa vCliente, double vSaldo,
      [this._rendimento = 0.02])
      : super(vNumero, vAgencia, vCliente, vSaldo);

  get aniversarioDeRendimento => this._aniversarioDeRendimento;
  set aniversarioDeRendimento(value) => this._aniversarioDeRendimento = value;

  get rendimento => this._rendimento;
  set rendimento(value) => this._rendimento = value;

  /* int get aniversarioDeRendimento => this._aniversarioDeRendimento; */

  void render() {
    double valorRendimento = this.obterSaldo() * this._rendimento;
    this.depositar(valorRendimento);
  }
}
