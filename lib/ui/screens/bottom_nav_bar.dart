import 'package:flutter/material.dart';
import 'package:malina_app/core/theme/app_colors.dart';
import 'package:malina_app/ui/screens/food_select_page.dart';
import 'package:malina_app/ui/screens/home_page.dart';
import 'package:malina_app/ui/screens/product_select_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Лента',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    Text(
      'Избранное',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    
    MyHomePage(),

    Text(
      'Профиль',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    FoodSelectPage(),
  ];

  void _onItemTapped(int index) {
    if (index != 4) {
      setState(() {
        _selectedIndex = index;
      });
    } else {
      _showPopupMenu();
    }
  }

  void _showPopupMenu() {
    showGeneralDialog <void>(context: context, 
    barrierColor: const Color(0x01000000),
    pageBuilder: (_, ___, ____,){
      return Align(
        alignment:  const Alignment(1, 0.8),
        child: Container(
          width: 65,
          height: 135,
          decoration:  BoxDecoration(color: AppColors.white,
          borderRadius: BorderRadius.circular(30),
          ),
          child: 
          Column(
            children: [
              RawMaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FoodSelectPage()),
                  );
                },
                elevation: 2.0,
                fillColor: AppColors.softgrey,
                padding: const EdgeInsets.all(15.0),
                shape: const CircleBorder(),
                child: const Icon(
                  Icons.fastfood,
                  size: 25.0,
                ),
              ),
              const SizedBox(height: 5,),
              RawMaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProductSelectPage()),
                  );
                },
                elevation: 2.0,
                fillColor: AppColors.softgrey,
                padding: const EdgeInsets.all(15.0),
                shape: const CircleBorder(),
                child: const Icon(
                  Icons.clean_hands,
                  size: 25.0,
                ),
              ),
            ],
          ),
          ),
      );
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.auto_awesome_mosaic),
            label: 'Лента',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Избранное',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(
                color: AppColors.pink,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.dashboard, size: 35),
            ),
            label: 'Главное',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Корзина',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.pink,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}