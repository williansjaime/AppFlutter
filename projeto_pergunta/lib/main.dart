import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontucaoTotal = 0;

  final _perguntas = const [
    {
      "texto": "Qual é sua cor favoritas?",
      "respostas": [
        {"texto": "Laranja", "pontuacao": 10},
        {"texto": "Amarelo", "pontuacao": 4},
        {"texto": "Verde", "pontuacao": 2},
        {"texto": "Azul", "pontuacao": 1},
        {"texto": "Preto", "pontuacao": 5},
      ],
    },
    {
      "texto": "Qual é o seu animal favorito?",
      "respostas": [
        {"texto": "Rato", "pontuacao": 9},
        {"texto": "Leão", "pontuacao": 0},
        {"texto": "Tigre", "pontuacao": 8},
        {"texto": "Onça", "pontuacao": 7},
        {"texto": "Jacaré", "pontuacao": 10}
      ],
    },
    {
      "texto": "Qual é o seu instrutor favorito?",
      "respostas": [
        {"texto": "Willians", "pontuacao": 10},
        {"texto": "Willians", "pontuacao": 10},
        {"texto": "Willians", "pontuacao": 10},
        {"texto": "Willians", "pontuacao": 10},
        {"texto": "Willians", "pontuacao": 10}
      ],
    }
  ];
  void _responder(int pontuacao) {
    setState(() {
      _perguntaSelecionada++;
      _pontucaoTotal += pontuacao;
    });
    print(_pontucaoTotal);
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontucaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // List<Widget> widgets =
    //     respostas.map((t) => Respostas(t, _responder)).toList();
    // for (String textoResp
    //     in perguntas[_perguntaSelecionada].cast()["respostas"]) {
    //   respostas.add(Respostas(textoResp, _responder));
    // }

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Perguntas'),
      ),
      body: temPerguntaSelecionada
          ? Questionario(
              perguntas: _perguntas,
              perguntaSelecionada: _perguntaSelecionada,
              repostaSelecionada: _responder)
          : Resultado(_pontucaoTotal, _reiniciarQuestionario),
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
