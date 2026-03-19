import 'package:flutter/material.dart';
import 'package:telas/Empresa.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  // ignore: unused_element
  void _empresa() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TelaEmpresa(nome: "JTK")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          children: const [
            Icon(Icons.keyboard_alt_outlined, color: Colors.white, size: 40),
            SizedBox(width: 8.0),
            Text(
              "App ADS",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/menu_servico.png',
                    width: 100,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, "/empresa"),
                  child: Image.asset('assets/images/cliente1.png', width: 100),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
