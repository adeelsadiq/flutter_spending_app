// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import './widgets/transaction_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // String titleInput;
  // String amountInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

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
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 45,
                    child: Card(
                      elevation: 5,
                      color: Colors.orange,
                      child: Text('Chart!'),
                    ),
                  ),
                  Card(
                      child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        TextField(
                            controller: titleController,
                            decoration: InputDecoration(labelText: 'Title')),
                        TextField(
                            controller: amountController,
                            decoration: InputDecoration(labelText: 'Amount')),
                        ElevatedButton(
                            onPressed: () {
                              print(titleController.text);
                              print(amountController.text);
                            },
                            child: Text('Add Transactions'))
                      ],
                    ),
                  ))
                ],
              ),
            ]));
  }
}
