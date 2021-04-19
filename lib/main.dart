import 'package:flutter/material.dart';
import 'package:personal_expenses/Transaction.dart';

void main() =>
    runApp(MaterialApp(

      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  final List<Transaction> transaction = [
    Transaction(
        id: "10T", title: "Buy a shoes", amount: 9.55, date: DateTime.now()),
    Transaction(
        id: "11T", title: "Buy laptop", amount: 50.99, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
      ),
      body: Column(
        children: [
          Card(
            child: Container(
                width: double.infinity,
                height: 300,
                child: Text(
                  "Chart!",
                  style: TextStyle(color: Colors.purple,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
            color: Colors.blue,
            elevation: 5,
          ),
          Column(
            children: transaction.map((trans) {
              return Card(
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        "${trans.amount}",
                        style: TextStyle(color: Colors.purple,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),

                      ),
                      margin:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.purple,
                            width: 2,
                            style: BorderStyle.solid),
                      ),
                      padding: EdgeInsets.all(8),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(trans.title, style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                          textAlign: TextAlign.left,), Padding(
                          padding: EdgeInsets.all(5),),
                        Text(trans.date.toString(),
                            style: TextStyle(fontSize: 10),
                            textAlign: TextAlign.left)
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
