import '../pessoafisica.dart';
import '../pessoajuridica.dart';

class Clientes {
  static List<PessoaFisica> _listaDeClientesPF = [];
  static List<PessoaJuridica> _listaDeClientesPJ = [];

  static void cadastrarpf(PessoaFisica pessoaFisica) {
    _listaDeClientesPF.add(pessoaFisica);
  }

  static void cadastrarpj(PessoaJuridica pessoaJuridica) {
    _listaDeClientesPJ.add(pessoaJuridica);
  }

  static Iterable<PessoaFisica> buscarpf(String nome) {
    return _listaDeClientesPF
        .where((pessoaFisica) => pessoaFisica.nome == nome);
  }

  static Iterable<PessoaJuridica> buscarpj(String CNPJ) {
    return _listaDeClientesPJ
        .where((pessoaJuridica) => pessoaJuridica.CNPJ == CNPJ);
  }

  static void editarpf(PessoaFisica vPessoaFisica) {
    bool localizado = _listaDeClientesPF.contains(vPessoaFisica);
    if (localizado) {
      var clientespf = buscarpf(vPessoaFisica.nome);
      for (PessoaFisica antigo in clientespf) {
        antigo.nome = vPessoaFisica.nome;
        antigo.RG = vPessoaFisica.RG;
        antigo.CPF = vPessoaFisica.CPF;
        antigo.telefoneParaContato = vPessoaFisica.telefoneParaContato;
        antigo.endereco = vPessoaFisica.endereco;
        antigo.email = vPessoaFisica.email;
      }
    }
  }

  static void editarpj(PessoaJuridica vPessoaJuridica) {
    bool localizado = _listaDeClientesPJ.contains(vPessoaJuridica);
    if (localizado) {
      var clientespj = buscarpj(vPessoaJuridica.CNPJ);
      for (PessoaJuridica antigo in clientespj) {
        antigo.CNPJ = vPessoaJuridica.CNPJ;
        antigo.razaoSocial = vPessoaJuridica.razaoSocial;
        antigo.telefoneParaContato = vPessoaJuridica.telefoneParaContato;
        antigo.endereco = vPessoaJuridica.endereco;
        antigo.email = vPessoaJuridica.email;
      }
    }
  }

  static void removerpf(String nome) {
    _listaDeClientesPF.removeWhere((pessoaFisica) => pessoaFisica.nome == nome);
  }

  static void removerpj(String CNPJ) {
    _listaDeClientesPJ
        .removeWhere((pessoaJuridica) => pessoaJuridica.CNPJ == CNPJ);
  }
}
