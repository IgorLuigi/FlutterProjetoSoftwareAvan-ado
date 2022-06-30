import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/calculadora.dart';
import 'package:flutter_application_1/view/calcular_idade.dart';
import 'package:flutter_application_1/view/hello_word.dart';
import 'package:flutter_application_1/view/menu.dart';
import 'package:flutter_application_1/view/my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      routes: {
        '/': (context) => Menu(),
        '/contador': (context) => MyHomePage(),
        '/helloword': (context) => HelloWorld(),
        '/calcularidade': (context) => CalcularIdade(),
        '/calculadora': (context) => Calculadora(),
      },
    );
  }
}
