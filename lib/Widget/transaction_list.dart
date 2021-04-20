import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:personal_expenses/models/Transaction.dart';

class TransactionList extends StatelessWidget {

  final List<Transaction> _transaction;

  TransactionList(this._transaction);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: _transaction.map((trans) {
        return Card(
          child: Row(
            children: [
              Container(
                child: Text(
                  "\$ ${trans.amount}",
                  style: TextStyle(
                      color: Colors.purple,
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
                  Text(
                    trans.title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(DateFormat.yMEd().format(trans.date),
                      style: TextStyle(fontSize: 10),
                      textAlign: TextAlign.left)
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
