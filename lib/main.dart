// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text('Flutter App'),
          ],
        ),
      ),
      body: Column(children: <Widget>[
        Column(
          children: [
            Container(
              width: double.infinity,
              child: Card(
                elevation: 5,
                child: Text('Chart!'),
              ),
            ),
          ],
        ),
        Card(child: Text('list of text!'))
      ]),
    );
  }
}
