import 'package:flutter/material.dart';

import 'page_1.dart';
import 'page_2.dart';
import 'page_3.dart';
import 'page_4.dart';

class M_a extends StatefulWidget {
  const M_a({Key? key}) : super(key: key);

  @override
  State<M_a> createState() => _M_aState();
}

class _M_aState extends State<M_a> {
  int barIndex = 0;
  List list = [Page_1(), Page_2(), Page_3(), Page_4()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[barIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xff133FDB),
        unselectedItemColor: Color(0xff858585),
        type: BottomNavigationBarType.fixed,
        currentIndex: barIndex,
        onTap: (index) {
          barIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.send), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: ''),
        ],
      ),
    );
  }
}
