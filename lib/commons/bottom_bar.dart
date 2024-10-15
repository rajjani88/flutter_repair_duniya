import 'package:flutter/material.dart';
import 'package:flutter_repair_duniya/utils/app_colors.dart';
import 'package:flutter_repair_duniya/utils/app_images.dart';

class MyBottomBar extends StatelessWidget {
  const MyBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedItemColor: colorTextBlack,
        unselectedItemColor: colorTextGray,
        selectedLabelStyle: const TextStyle(color: colorTextBlack),
        unselectedLabelStyle: const TextStyle(color: colorTextGray),
        backgroundColor: Colors.white,
        showUnselectedLabels: true,
        currentIndex: 0,
        elevation: 4,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: ImageIcon(Image.asset(getImage('bottom_home')).image),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: ImageIcon(Image.asset(getImage('bottom_category')).image),
              label: 'Category'),
          BottomNavigationBarItem(
              icon: ImageIcon(Image.asset(getImage('bottom_search')).image),
              label: 'My Stays'),
          BottomNavigationBarItem(
              icon:
                  ImageIcon(Image.asset(getImage('bottom_appointment')).image),
              label: 'Appointment'),
          BottomNavigationBarItem(
              icon: Image.asset(getImage('bottom_user_profile')),
              label: 'My Profile'),
        ]);
  }
}
