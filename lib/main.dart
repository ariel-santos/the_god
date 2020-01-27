import 'dart:math';

import 'package:flutter/material.dart';

void main() {
    runApp( new MaterialApp(
        title: 'The God',
        home: Home()
    ));
}

class Home extends StatefulWidget {
    @override
    _HomeState createState() =>  _HomeState();
}

class _HomeState extends State<Home> {
    List<String> phrases = [
        "Gostei do tutorial, ",
        "Estou iniciando com React ",
        "Não sei qual a principal diferença pro Angular ",
        "Gosto muito da forma do React para desenvolver. ",
        "Parabéns xará",
        "Hello world",
    ];
    String actualMessage = "";
    var rng = new Random();

    void changeMessage () {
        setState(() {
            actualMessage = phrases[rng.nextInt(6)];
        });
    }

    @override
    Widget build(BuildContext context) {
        return Stack(
            children: <Widget>[
                Image.asset(
                    "images/mito.jpg",
                    height: 1000,
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        Center(
                            child: Text(
                                "O Mito JASTRE",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    shadows: [
                                        Shadow(
                                            blurRadius: 10,
                                            color: Colors.blue,
                                            offset: Offset(2, 2),
                                        ),
                                    ]
                                ),
                                
                            ),
                        ),
                        Padding(
                            padding: EdgeInsets.all(30),
                            child: Center(
                                child: Text(
                                    "Aperte o botão abaixo para sortear sua frase",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        shadows: [
                                        Shadow(
                                            blurRadius: 10,
                                            color: Colors.blue,
                                            offset: Offset(2, 2),
                                        ),
                                    ]
                                    ),
                                    textAlign: TextAlign.center,
                                )   
                            ),
                        ),
                        RaisedButton(
                            color: Colors.green,
                            child: Text(
                                "Frase!",
                                style: TextStyle( color: Colors.white ),
                            ),
                            onPressed: () {
                                changeMessage();
                            },
                        ),
                        Padding(
                            padding: EdgeInsets.all(20),
                            child: Center(
                                child: Text(
                                actualMessage,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    shadows: [
                                        Shadow(
                                            blurRadius: 10,
                                            color: Colors.blue,
                                            offset: Offset(2, 2),
                                        ),
                                        Shadow(
                                            blurRadius: 10,
                                            color: Colors.black,
                                            offset: Offset(2, 2),
                                        )
                                    ]
                                ),
                            ),
                            )
                        )
                    ],
                )
            ],
        );
    }
}