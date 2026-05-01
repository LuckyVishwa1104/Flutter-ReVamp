import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
    required this.title,
    required this.drawerItem,
    required this.drawerIcon,
  });

  final String title;
  final int drawerItem;
  final Icon drawerIcon;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(
              Icons.share,
              color: Colors.black,
              size: 20,
            ),
            title: Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            ),
            onTap: () {},
          );
        },
      ),
    );
  }
}
