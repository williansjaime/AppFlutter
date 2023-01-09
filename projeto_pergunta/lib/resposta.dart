import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Respostas extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;
  Respostas(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              textStyle: TextStyle(color: Colors.amberAccent)),
          onPressed: quandoSelecionado,
          child: Text(texto),
        ));
  }
}
