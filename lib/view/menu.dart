import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  // var primeiroBotao = ElevatedButton(
  //   child: const Text('Primeiro Botão'),
  //   onPressed: () {
  //     print('Primeiro botão');
  //   },
  // );

  // var segundoBotao = ElevatedButton(
  //   child: const Text('Segundo Botão'),
  //   onPressed: () {
  //     print('Segundo botão');
  //   },
  // );

  Widget criarBotao(String rotulo, VoidCallback? acao) {
    return ElevatedButton(
      child: Text(rotulo),
      onPressed: acao,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          criarBotao(
              'Contador', () => Navigator.pushNamed(context, '/contador')),
          criarBotao(
              'Hello Word', () => Navigator.pushNamed(context, '/helloword')),
          criarBotao('Calcular Idade',
              () => Navigator.pushNamed(context, '/calcularidade')),
          criarBotao('Calculadora',
              () => Navigator.pushNamed(context, '/calculadora')),
        ],
      ),
    ));
  }
}
