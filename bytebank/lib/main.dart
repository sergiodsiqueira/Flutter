import 'package:flutter/material.dart';

void main() => runApp(ByteBankApp());

class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FormularioTransferencia(),
      ),
    );
  }
}

class FormularioTransferencia extends StatelessWidget {
  final TextEditingController _ctrlNConta = TextEditingController();
  final TextEditingController _ctrlValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Criando Transferência')),
      body: Column(
        children: [
          Editor(
              _ctrlNConta,
              'N. Conta',
              '00.000-00',
              Icons.account_balance_outlined),
          Editor(
              _ctrlValor,
              'Valor',
              '0.00',
              Icons.monetization_on),
          ElevatedButton(
              child: Text('CONFIRMAR'),
              onPressed: () {
                debugPrint('OLA');
                final String NConta = _ctrlNConta.text;
                final double Valor = double.parse(_ctrlValor.text);
                if (NConta != null && Valor != null) {
                  final transferenciaCriada = Transferencia(Valor, NConta);
                  debugPrint('$transferenciaCriada');
                }
              })
        ],
      ),
    );
  }
}

class ListaTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferências'),
      ),
      body: Column(
        children: [
          ItemTransferencia(Transferencia(-200.00, 'CC 15.790-2')),
          ItemTransferencia(Transferencia(110.00, 'CC 15.790-2')),
          ItemTransferencia(Transferencia(120.00, 'CC 15.790-2')),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: Icon(Icons.monetization_on),
      title: Text(_transferencia.valor.toString()),
      subtitle: Text(_transferencia.numeroConta),
    ));
  }
}

class Transferencia {
  final double valor;
  final String numeroConta;

  Transferencia(this.valor, this.numeroConta);

  @override
  String toString() {
    return 'Transferencia{valor: $valor, numeroConta: $numeroConta}';
  }
}

class Editor extends StatelessWidget {
  final TextEditingController _controlador;
  final String _rotulo;
  final String _dica;
  final IconData _icone;

  Editor(this._controlador, this._rotulo, this._dica, this._icone);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        controller: _controlador,
        style: TextStyle(fontSize: 16.0),
        decoration: InputDecoration(
          icon: Icon(_icone),
          labelText: _rotulo,
          hintText: _dica,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
