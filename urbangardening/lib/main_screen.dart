import 'package:flutter/material.dart';
import 'package:urbangardening/article_list.dart';
import 'package:urbangardening/product_list.dart';
import 'package:urbangardening/transaction_list.dart';
import 'package:urbangardening/home_page.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Roboto', fontSize: 20);

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreenMobile(),
      //untuk sementara!! setelah bikin versi mobile gunakan LayoutBuilder untuk versi mobile dan web berdasarakan constraints
    );
  }
}

class HomeScreenMobile extends StatefulWidget {
  const HomeScreenMobile({Key? key}) : super(key: key);

  @override
  State<HomeScreenMobile> createState() => _HomeScreenMobile();
}

class _HomeScreenMobile extends State<HomeScreenMobile> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.green,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.menu_book),
            label: 'Articles',
          ),
          NavigationDestination(
            icon: Icon(Icons.store),
            label: 'Marketplace',
          ),
          NavigationDestination(
            icon: Icon(Icons.list_alt_sharp),
            label: 'Transaction',
          ),
        ],
      ),
      body: const <Widget>[
        ///Home Page
        HomePageMobile(),

        ///Explore
        ArticlePage(),

        /// Marketplace
        ProductPage(),

        ///Transaction
        TransactionPage(),
      ][currentPageIndex],
    );
  }
}
