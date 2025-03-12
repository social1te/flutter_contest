import 'package:flutter/material.dart';
import 'package:untitled3/src/config/styles/colors.dart';
import 'package:untitled3/src/features/cart/cart_screen.dart';
import 'package:untitled3/src/features/favorites/favorites_list_screen.dart';
import 'package:untitled3/src/features/home/home_screen.dart';
import 'package:untitled3/src/features/notifications/notifications_screen.dart';
import 'package:untitled3/src/features/notifications/widgets/notification_widget.dart';
import 'package:untitled3/src/features/profile/profile_screen.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  int _selectedIndex = 0;

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _screens = [
    HomeScreen(),
    FavoritesListScreen(),
    CartScreen(),
    NotificationsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(
          color: AppColors.pictonBlue,
          size: 24
        ),
        unselectedIconTheme: IconThemeData(
          color: AppColors.auroMetalSaurus,
          size: 24
        ),
        onTap: _onTap,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_4_outlined),
            label: '',
          ),
        ],
      ),
    );
  }
}
