import 'package:flutter/material.dart';

class CalcularIdade extends StatelessWidget {
  String? nome;
  int? anoNascimento;

  dialog(String mensagem, BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text(mensagem),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calcular Idade')
      ),
      body: Form(
          child: Column(
        children: [
          TextField(
            onChanged: (nomeDigitado) {
              nome = nomeDigitado;
            },
            decoration: const InputDecoration(
                label: Text('Nome'), hintText: 'Digite seu nome completo'),
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                label: Text('Data de Nascimento'),
                hintText: 'Digite o seu ano de nascimento'),
            onChanged: (valorDigitado) {
              anoNascimento = int.parse(valorDigitado);
            },
          ),
          ElevatedButton(
            child: Text('Calcular'),
            onPressed: () {
              int anoAtual = new DateTime.now().year;
              var idade = anoAtual - anoNascimento!;
              var resultado = "${nome} " + "você tem " + "${idade} " + "anos!";
              dialog(resultado.toString(), context);
            },
          )
        ],
      )),
    );
  }
}
