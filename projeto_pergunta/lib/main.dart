import 'package:flutter/material.dart';
import './questao.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });

    print(_perguntaSelecionada);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final perguntas = [
      "Qual é sua cor favoritas?",
      "Qual é o seu animal favorito?"
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Perguntas'),
      ),
      body: Column(
        children: <Widget>[
          Questao(perguntas[_perguntaSelecionada]),
          TextButton(child: Text("Resposta 1"), onPressed: _responder),
          TextButton(child: Text("Resposta 2"), onPressed: _responder),
          TextButton(child: Text("Resposta 3"), onPressed: _responder)
        ],
      ),
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
