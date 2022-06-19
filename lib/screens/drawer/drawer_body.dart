import 'package:flutter/material.dart';

class MyDrawerbody extends StatefulWidget {
  MyDrawerbody({Key? key}) : super(key: key);

  @override
  State<MyDrawerbody> createState() => _MyDrawerbodyState();
}

class _MyDrawerbodyState extends State<MyDrawerbody> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(children: [
      categoro('Акыркы жанылыктар'),
      categoro('Коомдогу жанылыктар'),
      categoro('Дуйнодогу жанылыктар'),
      categoro('Авто жанылыктар'),
      const Divider(thickness: 1.1),
      Padding(
        padding: const EdgeInsets.only(top: 16),
        child: categoro('Тандалган жанылыктар', Colors.green),
      ),
      const Divider(thickness: 1.1),
      categoro('Маданият жанылыктар'),
      categoro('Спорт жанылыктар'),
      categoro('Технология жанылыктар'),
    ]));
  }

  Widget categoro(String title, [Color givenColor = Colors.black]) {
    return Container(
      height: 40,
      margin: const EdgeInsets.only(left: 18),
      child: Text(
        title,
        style: TextStyle(
            color: givenColor, fontSize: 16, fontWeight: FontWeight.w500),
      ),
    );
  }
}
