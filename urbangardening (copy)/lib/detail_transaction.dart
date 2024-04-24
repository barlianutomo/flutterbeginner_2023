import 'package:flutter/material.dart';
import 'package:urbangardening/model/transactions.dart';

class DetailTransaction extends StatelessWidget {
  final Transactions transactions;

  const DetailTransaction({Key? key, required this.transactions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          return DetailTransactionWebPage(transactions: transactions);
        } else {
          return DetailTransactionMobilePage(transactions: transactions);
        }
      },
    );
  }
}

class DetailTransactionWebPage extends StatelessWidget {
  final Transactions transactions;
  const DetailTransactionWebPage({Key? key, required this.transactions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('ini halaman web transaksi');
  }
}

class DetailTransactionMobilePage extends StatelessWidget {
  final Transactions transactions;
  const DetailTransactionMobilePage({Key? key, required this.transactions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
        title: const Text('Halaman Transaksi'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Ini halaman transaksi'),
            Text('Ini halaman transaksi'),
          ],
        ),
      ),
    );
  }
}
