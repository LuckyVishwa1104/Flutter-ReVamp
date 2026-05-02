import 'package:flutter/material.dart';
import 'package:flutter_basics/components/custom_drawer.dart';
import 'package:flutter_basics/drawer/drawer_option.dart';
import 'package:flutter_basics/model/drawer_item_model.dart';

class DialogBoxDemo2 extends StatelessWidget {
  const DialogBoxDemo2({super.key});

  void navToDrawerOption(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (contexst) => const DrawerOption(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<DrawerItemModel> itemList = [
      DrawerItemModel(
        itemTitle: "Home",
        itemIcon: Icons.home,
        onTap: () {
          navToDrawerOption(context);
        },
      ),
      DrawerItemModel(
        itemTitle: "Profile",
        itemIcon: Icons.person,
        onTap: () {
          navToDrawerOption(context);
        },
      ),
      DrawerItemModel(
        itemTitle: "Settings",
        itemIcon: Icons.settings,
        onTap: () {
          navToDrawerOption(context);
        },
      ),
      DrawerItemModel(
        itemTitle: "Home",
        itemIcon: Icons.home,
        onTap: () {
          navToDrawerOption(context);
        },
      ),
      DrawerItemModel(
        itemTitle: "Profile",
        itemIcon: Icons.person,
        onTap: () {
          navToDrawerOption(context);
        },
      ),
      DrawerItemModel(
        itemTitle: "Settings",
        itemIcon: Icons.settings,
        onTap: () {
          navToDrawerOption(context);
        },
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        title: const Text(
          'Dialog box',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
        ),
        actions: const [
          Icon(
            Icons.share,
            size: 30,
          )
        ],
        actionsPadding: const EdgeInsets.only(right: 10),
      ),

      // drawer
      drawer: CustomDrawer(drawerItems: itemList),

      // body
      body: const Center(
        child: Text(
          'Home Page',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),

      // bottom nav bar
      
    );
  }
}
