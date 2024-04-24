import 'package:flutter/material.dart';
import 'package:urbangardening/detail_transaction.dart';
import 'package:urbangardening/model/transactions.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          return const TransactionListWeb();
        } else {
          return const TransactionListMobile();
        }
      },
    );
  }
}

class TransactionListMobile extends StatelessWidget {
  const TransactionListMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          foregroundColor: Colors.black,
          title: const Text('Daftar Transaksi'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemBuilder: (context, index) {
              final Transactions transactions = transactionList[index];
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailTransaction(transactions: transactions);
                  }));
                },
                child: Card(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Image.asset(transactions.thumbnail),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                transactions.date,
                                style: const TextStyle(fontSize: 16.0),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(transactions.id),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(transactions.nameStore),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(transactions.totalPayment),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
            itemCount: transactionList.length,
          ),
        ));
  }
}

class TransactionListWeb extends StatelessWidget {
  const TransactionListWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Ini halaman list transaksi web');
  }
}
