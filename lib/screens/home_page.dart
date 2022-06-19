import 'package:bazar/screens/drawer/drawer.dart';
import 'package:bazar/screens/lets_page/lets_page.dart';
import 'package:flutter/material.dart';

class Myhomepage extends StatefulWidget {
  Myhomepage({Key? key}) : super(key: key);

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Bazar'),
          bottom: const TabBar(isScrollable: true, tabs: [
            Tab(
              child: Text('Жанылыктар'),
            ),
            Tab(
              child: Text('Негизги жанылыктар'),
            ),
            Tab(
              child: Text('Спорт жанылыктары'),
            )
          ]),
        ),
        body: TabBarView(
          children: [
            LetesPage(),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            )
          ],
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}
