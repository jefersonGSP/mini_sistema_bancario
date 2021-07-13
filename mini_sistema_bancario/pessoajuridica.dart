import 'endereco.dart';
import 'pessoa.dart';

class PessoaJuridica extends Pessoa {
  String _CNPJ;
  String _razaoSocial;
  String _nomeFantasia;

  PessoaJuridica(
    this._CNPJ,
    this._razaoSocial,
    this._nomeFantasia,
    String vTelefone,
    Endereco vEndereco, [
    String? vEmail,
  ]) : super(
          email: vEmail,
          telefoneParaContato: vTelefone,
          endereco: vEndereco,
        );

  String get razaoSocial => this._razaoSocial;
  set razaoSocial(String value) => this._razaoSocial = value;

  String get CNPJ => this._CNPJ;
  set CNPJ(String value) => this._CNPJ = value;

  String get nomeFantasia => this._nomeFantasia;
  set nomeFantasia(String value) => this._nomeFantasia = value;
}
