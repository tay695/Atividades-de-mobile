import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: CalculadoraCombustivel(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class CalculadoraCombustivel extends StatefulWidget {
  const CalculadoraCombustivel({super.key});

  @override
  State<CalculadoraCombustivel> createState() => _CalculadoraCombustivelState();
}

class _CalculadoraCombustivelState extends State<CalculadoraCombustivel> {
  final TextEditingController _controllerAlcool = TextEditingController();
  final TextEditingController _controllerGasolina = TextEditingController();
  String _resultado = "Informe os valores para saber a melhor opção";

  void _calcular() {
    double? precoAlcool = double.tryParse(
      _controllerAlcool.text.replaceAll(',', '.'),
    );
    double? precoGasolina = double.tryParse(
      _controllerGasolina.text.replaceAll(',', '.'),
    );

    if (precoAlcool == null || precoGasolina == null) {
      setState(() {
        _resultado = "Por favor, digite valores válidos e maiores que 0.";
      });
      return;
    }
    if ((precoAlcool / precoGasolina) >= 0.7) {
      setState(() {
        _resultado = "Melhor abastecer com GASOLINA";
      });
    } else {
      setState(() {
        _resultado = "Melhor abastecer com ETANOL";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Etanol vs Gasolina"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(Icons.local_gas_station, size: 80, color: Colors.blue),
            const Padding(
              padding: EdgeInsets.only(bottom: 32, top: 16),
              child: Text(
                "Saiba qual a melhor opção para abastecer seu carro",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            // Campo Etanol
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Preço Etanol, ex: 3.59",
              ),
              controller: _controllerAlcool,
            ),
            // Campo Gasolina
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Preço Gasolina, ex: 5.89",
              ),
              controller: _controllerGasolina,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: _calcular,
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: const Text(
                  "Calcular",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                _resultado,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
