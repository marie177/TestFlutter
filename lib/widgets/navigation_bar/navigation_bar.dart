// ignore_for_file: prefer_const_constructors, unused_element, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class NavigationBar2 extends StatelessWidget {
  const NavigationBar2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
        SizedBox(
          height: 80,
          width: 150,
          child: Image.network(
              'https://png.pngtree.com/element_pic/16/11/02/bd886d7ccc6f8dd8db17e841233c9656.jpg'),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
          _NavBarItem(title: 'Episodes'),
          SizedBox(width: 60,),
          _NavBarItem(title: 'About')
          ],
        )
      ]),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 18),
    );
  }
}
