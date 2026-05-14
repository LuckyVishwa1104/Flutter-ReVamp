import 'package:flutter/material.dart';
import 'package:flutter_basics/model/bottom_navbar_model.dart';

class CustomBottomNavbar extends StatelessWidget {
  final int selectedIndex;
  final List<BottomNavbarModel> tabList;
  final Function(int) onTabTap;

  const CustomBottomNavbar({
    super.key,
    required this.onTabTap,
    required this.selectedIndex,
    required this.tabList,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
      data: NavigationBarThemeData(

        backgroundColor: Colors.black,

        indicatorColor: Colors.white24,

        // icon styling
        iconTheme: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return const IconThemeData(
              color: Colors.white,
              size: 28,
            );
          }

          return const IconThemeData(
            color: Color.fromARGB(255, 37, 223, 74),
            size: 24,
          );
        }),

        // label styling
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 13,
            );
          }

          return const TextStyle(
            color: Color.fromARGB(255, 37, 223, 74),
            fontSize: 12,
          );
        }),
      ),

      child: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: onTabTap,

        destinations: tabList.map((item) {
          return NavigationDestination(
            icon: Icon(item.icon),
            selectedIcon: Icon(item.selectedIcon),
            label: item.label,
          );
        }).toList(),
      ),
    );
  }
}
