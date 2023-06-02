class Controller {
  String _valorEntrada = "";
  String _valorSaida = "";

  String get valorEntrada => _valorEntrada;
  String get valorSaida => _valorSaida;

  void adicionarDigito(String digito) {
    if (_valorEntrada.length < 5) {
      _valorEntrada += digito;
    }
  }

  void converter() {
    double valor = double.parse(_valorEntrada);
    double convertido = (valor - 32) * 5 / 9;
    _valorSaida = convertido.toStringAsFixed(2);
  }

  void limpar() {
    _valorEntrada = "";
    _valorSaida = "";
  }
}
