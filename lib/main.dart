import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "Nem todas as tempestades vêm para atrapalhar a sua vida. Algumas vêm para limpar seu caminho.",
    "Não se desespere quando a caminhada estiver difícil, é sinal de que você está no caminho certo.",
    "As pessoas costumam dizer que a motivação não dura sempre. Bem, nem o efeito do banho, por isso recomenda-se diariamente.",
    "Motivação é a arte de fazer as pessoas fazerem o que você quer que elas façam porque elas o querem fazer."];

  var _fraseInicial = "Clique abaixo para gerar a frase!";

  void _frasesAleatoria(){

    var numAleatorio = Random().nextInt(_frases.length);

    setState(() {
      _fraseInicial = _frases[numAleatorio];
    });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Frase do dia"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("images/logo.png"),
            Text(
              _fraseInicial,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.italic,
                color: Colors.black
              ),
            ),
            RaisedButton(
              child: Text(
                  "Nova frase",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white
                  ),
              ),
              color: Colors.green,
              onPressed: _frasesAleatoria,
            )
          ],
        ),
      ),
    );
  }
}
