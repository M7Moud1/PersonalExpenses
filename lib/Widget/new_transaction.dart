import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final Function newTx;

  NewTransaction(this.newTx);

  @override
  Widget build(BuildContext context) {
    return   Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Title"),
              controller: titleController,
              onSubmitted: (val) {

                newTx(val , val);
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount"),
              controller: amountController,
              keyboardType: TextInputType.datetime,
            ),


            TextButton(
              style: TextButton.styleFrom(primary: Colors.purple),
              onPressed: (){
                print(titleController.value.text);

                newTx(titleController.text ,double.parse(amountController.text));

              }, child: Text("Add transaction"),
            )
          ],
        ),
      ),
      elevation: 5,
    );
  }
}
