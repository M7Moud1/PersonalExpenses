import 'package:flutter/material.dart';
import "new_transaction.dart";
import "transaction_list.dart";
import '../models/Transaction.dart';

class Usertransaction extends StatefulWidget {
  @override
  _UsertransactionState createState() => _UsertransactionState();
}

class _UsertransactionState extends State<Usertransaction> {

  final List<Transaction> _transaction = [
    Transaction(
        id: "10T", title: "Buy a shoes", amount: 9.55, date: DateTime.now()),
    Transaction(
        id: "11T", title: "Buy laptop", amount: 50.99, date: DateTime.now())
  ];

  void addNewTransaction(String txTitle , double txAmount) {

    final newTx = Transaction(id: DateTime.now().toString(), title: txTitle, amount: txAmount, date: DateTime.now());

    setState(() {

      _transaction.add(newTx);

    });

  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [

      NewTransaction(addNewTransaction),
      TransactionList(_transaction)
    ],);
  }
}
