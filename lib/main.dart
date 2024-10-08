import 'package:despesas_pessoal/models/transa%C3%A7%C3%A3o.dart';
import 'package:flutter/material.dart';

void main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {

  final _Transactions =[
    Transaction(
        id: 't1',
        title: 'novo tenis de corrida',
        value: 310.76,
        date:DateTime.now(),),
    Transaction(
      id: 't2',
      title: 'conta de Luz ',
      value: 211.30,
      date:DateTime.now(),),
  ];

 MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

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
       children:[
         Container(
           width: double.infinity,
           child:Card(
             child: Text("Grafico "),
             elevation: 5,
             color: Colors.blue,
           ),
         ),
         Card(
           child: Text("Lista De Transações"),
         )


       ],
      ),
    );
  }
}
