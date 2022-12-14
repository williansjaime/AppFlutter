import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
  void responder() {
    setState(() {
      perguntaSelecionada++;
    });

    print(perguntaSelecionada);
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
          Text(perguntas[perguntaSelecionada]),
          TextButton(child: Text("Resposta 1"), onPressed: responder),
          TextButton(child: Text("Resposta 2"), onPressed: responder),
          TextButton(child: Text("Resposta 3"), onPressed: responder)
        ],
      ),
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
