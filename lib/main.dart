import 'package:despesas_pessoal/models/transa%C3%A7%C3%A3o.dart';
import 'package:flutter/material.dart';
import 'package:despesas_pessoal/models/transação.dart';

void main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {



 MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
final _transaction =[
  Transaction(
    id: 't1',
    title: 'novo tenis de corrida',
    value: 310.76,
    date:DateTime.now(),),
  Transaction(
    id: 't2',
    title: 'conta de Luz ',
    value:211.32,
    date:DateTime.now(),),
];

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("despesas pessoais"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.infinity,
            child: Card(
              child: Text("Grafico "),
              elevation: 5,
              color: Colors.blue,
            ),
          ),
          Column(
            children: _transaction.map((tr) {
              return Card(
                child:Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        )
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        tr.value.toString()
                      ),
                    ),
                    Column(
                      children: [
                        Text(tr.title),
                        Text(tr.date.toString()),
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}