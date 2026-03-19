import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EntradaDados extends StatefulWidget {
  const EntradaDados({super.key});

  @override
  State<EntradaDados> createState() => _EntradaDadosState();
}

class _EntradaDadosState extends State<EntradaDados> {
  TextEditingController _campo = TextEditingController();

  var _valor = 0.0;

  void _somar() {
    setState(() {
      var v = double.tryParse(_campo.text);

      if (v != null) {
        _valor += v;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              filled: true,
              icon: Icon(Icons.gas_meter),
              label: Text("Numero"),
            ),

            style: TextStyle(color: Colors.blue),
            controller: _campo,
            enabled: true,
            maxLength: 10,
            maxLengthEnforcement: MaxLengthEnforcement.none,
          ),
          ElevatedButton(onPressed: _somar, child: Icon(Icons.add)),
          Text("$_valor"),
        ],
      ),
    );
  }
}
