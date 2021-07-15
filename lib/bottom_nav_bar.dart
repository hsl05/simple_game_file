import 'package:boss_project/screen/home.dart';
import 'package:flutter/material.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({Key? key}) : super(key: key);

  @override
  _BottomNavBarScreenState createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int _seletedItem = 0;
  var _pages = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _pages[_seletedItem],
        ),
        bottomNavigationBar: Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Colors.grey, blurRadius: 0.1)
                ]
            ),

        child: BottomNavigationBar(
              showUnselectedLabels: false,
              showSelectedLabels: false,
              selectedItemColor: Colors.red,
              unselectedItemColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.black,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_filled,
                  ),
                  label: '홈',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.receipt,),
                  label: '주문',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_basket),
                  label: '장바구니',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: '마이페이지',
                ),
              ],
              currentIndex: _seletedItem,
              onTap: (index) {
                setState(() {
                  _seletedItem = index;
                });
              },
            )));
  }
}
