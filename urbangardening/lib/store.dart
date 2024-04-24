import 'package:flutter/material.dart';
import 'package:urbangardening/model/stores.dart';

class DetailStore extends StatelessWidget {
  final Stores stores;

  const DetailStore({Key? key, required this.stores}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          return DetailStoreWebPage(stores: stores);
        } else {
          return DetailStoreMobilePage(stores: stores);
        }
      },
    );
  }
}

class DetailStoreWebPage extends StatelessWidget {
  final Stores stores;
  const DetailStoreWebPage({Key? key, required this.stores}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('ini halaman web toko 1');
  }
}

class DetailStoreMobilePage extends StatelessWidget {
  final Stores stores;
  const DetailStoreMobilePage({Key? key, required this.stores})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
        title: const Text('Halaman Toko'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Ini halaman Toko'),
            Text('Ini halaman Toko'),
          ],
        ),
      ),
    );
  }
}
