import 'package:app2/app/screens/cart.dart';
import 'package:app2/app/screens/drawer.dart';
import 'package:app2/app/screens/home_page.dart';
import 'package:app2/app/screens/profile.dart';
import 'package:app2/app/screens/search.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> pages = [
    const HomePage(),
    const AppDrawer(),
    const Search(),
    const Cart(),
    const Profile(),
  ];
  int currentpage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: pages[currentpage],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentpage = value;
          });
        },
        currentIndex: currentpage,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        iconSize: 28,
        unselectedFontSize: 0,
        selectedFontSize: 0,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/home.png',
              height: 30,
              color: currentpage == 0 ? Colors.yellow : Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/store.png',
              height: 30,
              color: currentpage == 1 ? Colors.yellow : Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/search.png',
              height: 30,
              color: currentpage == 2 ? Colors.yellow : Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/shopcart.png',
              height: 30,
              color: currentpage == 3 ? Colors.yellow : Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/users.png',
              height: 30,
              color: currentpage == 4 ? Colors.yellow : Colors.white,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
