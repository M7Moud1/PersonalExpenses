import 'package:flutter/material.dart';
import 'package:personal_expenses/Widget/user_transaction.dart';
import './Widget/new_transaction.dart';
import './Widget/transaction_list.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {




  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Flutter App"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                child: Container(
                    width: double.infinity,
                    height: 300,
                    child: Text(
                      "Chart!",
                      style: TextStyle(
                          color: Colors.purple,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
                color: Colors.blue,
                elevation: 5,
              ),

            Usertransaction(),
            ],
          ),
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
