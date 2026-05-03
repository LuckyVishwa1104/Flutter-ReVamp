import 'package:flutter/material.dart';
import 'package:flutter_basics/model/drawer_item_model.dart';

class CustomDrawer extends StatelessWidget {
  final List<DrawerItemModel> drawerItems;

  const CustomDrawer({
    super.key,
    required this.drawerItems,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Jhon Doe',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),

          ...drawerItems.map(
            (items) {
              return ListTile(
                leading: Icon(
                  items.itemIcon,
                  color: Colors.black,
                  size: 20,
                ),
                title: Text(
                  items.itemTitle,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  items.onTap();
                },
              );
            },
          ),

          // ListView.builder(
          //   itemCount: drawerItems.length,
          //   itemBuilder: (context, index) {
          //     final item = drawerItems[index];

          //     return ListTile(
          //       leading: Icon(
          //         item.itemIcon,
          //         color: Colors.black,
          //         size: 20,
          //       ),
          //       title: Text(
          //         item.itemTitle,
          //         style: const TextStyle(
          //           color: Colors.black,
          //           fontSize: 20,
          //           fontWeight: FontWeight.w300,
          //         ),
          //       ),
          //       onTap: () {
          //         Navigator.pop(context);
          //         item.onTap();
          //       },
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}
