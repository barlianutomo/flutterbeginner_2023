import 'package:flutter/material.dart';
import 'package:urbangardening/model/products.dart';

class DetailProduct extends StatelessWidget {
  final Products products;

  const DetailProduct({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          return DetailProductWebPage(products: products);
        } else {
          return DetailProductMobilePage(products: products);
        }
      },
    );
  }
}

class DetailProductWebPage extends StatelessWidget {
  final Products products;
  const DetailProductWebPage({Key? key, required this.products})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('ini halaman web produk 1');
  }
}

class DetailProductMobilePage extends StatelessWidget {
  final Products products;
  const DetailProductMobilePage({Key? key, required this.products})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.green,
      //   foregroundColor: Colors.black,
      //   title: const Text('Halaman Produk'),
      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(products.photoProduct),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 10),
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 20),
              child: Text(
                products.price,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 12.0,
                top: 15.0,
                bottom: 15.0,
              ),
              child: Text(
                products.name,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 2.0,
              child: ColoredBox(
                color: Colors.blueGrey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 10.0, bottom: 50),
              child: Text(
                products.productDesc,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: CircleAvatar(
                    radius: 50,
                    child: Image.asset(
                      products.storePict,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Text(
                    products.storeName,
                    style: const TextStyle(
                        fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.green, // Text Color (Foreground color)
              ),
              child: const Text(
                "Beli",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
