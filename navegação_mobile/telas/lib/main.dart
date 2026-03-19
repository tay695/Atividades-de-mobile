import 'package:flutter/material.dart';
import 'package:telas/Empresa.dart';
import 'tela_inicial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App ADS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: TelaInicial(),
      initialRoute: "/",
      routes: {"/empresa": (context) => TelaEmpresa()},
    );
  }
}
