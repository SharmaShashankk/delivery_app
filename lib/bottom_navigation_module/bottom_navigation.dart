import 'package:delivery_app/Category_screen_module/screens/category_screen.dart';
import 'package:delivery_app/checkout_screen_module/screens/checkout_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationModule extends StatefulWidget {
  const BottomNavigationModule({super.key});

  @override
  State<BottomNavigationModule> createState() => _BottomNavigationModuleState();
}

class _BottomNavigationModuleState extends State<BottomNavigationModule> {
  List pages = [
    CategoryScreen(),
    CheckoutScreen(),
  ];
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[myIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          myIndex = index;
          setState(() {});
        },
        currentIndex: myIndex,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/grid.png',
              color: myIndex == 0 ? Colors.deepPurple : Colors.grey,
              height: 25,
              width: 25,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/shopping-cart.png',
              color: myIndex == 1 ? Colors.deepPurple : Colors.grey,
              height: 25,
              width: 25,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/user.png',
              color: myIndex == 2 ? Colors.deepPurple : Colors.grey,
              height: 25,
              width: 25,
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
