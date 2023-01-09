import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) repostaSelecionada;

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.repostaSelecionada,
  });
  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada].cast()["respostas"]
        : [];
    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]["texto"].toString()),
        ...respostas.map((resp) {
          return Respostas(
            resp["texto"] as String,
            () => repostaSelecionada(int.parse(resp["pontuacao"].toString())),
          );
        }).toList(),
      ],
    );
  }
}
