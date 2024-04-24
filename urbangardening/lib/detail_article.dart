import 'package:flutter/material.dart';
import 'package:urbangardening/model/articles.dart';

class DetailArticle extends StatelessWidget {
  final Articles articles;

  const DetailArticle({Key? key, required this.articles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          return DetailArticleWebPage(articles: articles);
        } else {
          return DetailArticleMobilePage(articles: articles);
        }
      },
    );
  }
}

class DetailArticleWebPage extends StatelessWidget {
  final Articles articles;
  const DetailArticleWebPage({Key? key, required this.articles})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('ini halaman web artikel 1');
  }
}

class DetailArticleMobilePage extends StatelessWidget {
  final Articles articles;
  const DetailArticleMobilePage({Key? key, required this.articles})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
        title: const Text('Halaman Artikel'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 30.0),
              child: Text(
                articles.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16.0),
              child: Image.asset(articles.mainImage),
            ),
            Container(
              margin: const EdgeInsets.all(16.0),
              child: Text(articles.description),
            ),
            Container(
              margin: const EdgeInsets.all(16.0),
              child: Image.asset(articles.secoundImage),
            ),
          ],
        ),
      ),
    );
  }
}
