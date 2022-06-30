import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Calculadora extends StatelessWidget {
  String operacao = '+';
  final memoria = [0.0, 0.0];
  String resultado = '';

  Widget botao(String botao, VoidCallback context) {
    return ElevatedButton(
      child: Text(botao),
      onPressed: context,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculadora')),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            botao("CE", () {
              operacao = 'CE';
              memoria[0] = double.parse(resultado);
              resultado = '';
            }),
            botao("C", () {
              operacao = 'C';
              memoria[0] = double.parse(resultado);
              resultado = '';
            }),
            botao("Delete", () {
              operacao = 'Delete';
              memoria[0] = double.parse(resultado);
              resultado = '';
            }),
            botao("/", () {
              operacao = '/';
              memoria[0] = double.parse(resultado);
              resultado = '';
            }),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            botao("7", () {
              resultado += "7";
            }),
            botao("8", () {
              resultado += "8";
            }),
            botao("9", () {
              resultado += "9";
            }),
            botao("x", () {
              operacao = 'x';
              memoria[0] = double.parse(resultado);
              resultado = '';
            }),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            botao("4", () {
              resultado += "4";
            }),
            botao("5", () {
              resultado += "5";
            }),
            botao("6", () {
              resultado += "6";
            }),
            botao("-", () {
              operacao = '-';
              memoria[0] = double.parse(resultado);
              resultado = '';
            }),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            botao("1", () {
              resultado += "1";
            }),
            botao("2", () {
              resultado += "2";
            }),
            botao("3", () {
              resultado += "3";
            }),
            botao("+", () {
              operacao = '+';
              memoria[0] = double.parse(resultado);
              resultado = '';
            }),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            botao("", () {
              resultado = "";
            }),
            botao("0", () {
              resultado += "0";
            }),
            botao("", () {
              resultado = "";
            }),
            botao("=", () {
              operacao = '=';
              memoria[0] = double.parse(resultado);
              resultado = '';
            }),
          ],
        ),
      ]),
    );
  }
}
