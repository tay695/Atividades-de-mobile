import 'package:flutter/material.dart';

class TelaEmpresa extends StatefulWidget {
  String? nome;
  TelaEmpresa({super.key, this.nome});

  @override
  State<TelaEmpresa> createState() => _TelaEmpresaState();
}

class _TelaEmpresaState extends State<TelaEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Empresa", style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 16, left: 10, right: 10),
        child: Column(
          children: [
            Text("Apresentação da empresa"),
            Text("${widget.nome}"),
            Text(
              "Duis sint consectetur sint ad non tempor excepteur. Eu in excepteur mollit sint nostrud. Quis nisi aliquip do sit amet Lorem ut Lorem esse cillum. Ipsum reprehenderit dolor pariatur laboris. Eu est enim mollit sint laboris culpa est cillum eiusmod occaecat do. Anim occaecat proident Lorem id qui est. Tempor eiusmod officia eiusmod minim exercitation eiusmod anim do aliqua consequat laborum sunt nulla excepteur.",
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
