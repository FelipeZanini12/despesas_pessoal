import 'package:despesas_pessoal/models/transa%C3%A7%C3%A3o.dart';
import 'package:flutter/material.dart';
import 'package:despesas_pessoal/models/transação.dart';
import 'package:intl/intl.dart';

void main() => runApp(ExpensesApp());


class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(home: MyHomePage(
    ));
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
                          color: Colors.purple,
                          width: 2,
                        )
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        ' R\$ ${tr.value.toStringAsFixed(2)}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(tr.title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        Text(
                          DateFormat('d MMM y').format(tr.date),
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                        ),
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          ),
          SingleChildScrollView(
            child: Card(
            elevation: 5,
            
            child :Container(
              
              margin:EdgeInsets.all(10),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Titulo',
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Valor (R\$)',
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(onPressed: (){}, 
                        child: Text('Nova Transação',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple

                        ),
                        )
                    )
                  ],
                )

              ],
            ),
            ),
            ),
          ),
          
        ],
      ),
    );
  }
}