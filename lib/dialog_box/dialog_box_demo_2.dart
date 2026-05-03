import 'package:flutter/material.dart';
import 'package:flutter_basics/components/custom_app_bar.dart';
import 'package:flutter_basics/components/custom_dialog_box.dart';
import 'package:flutter_basics/components/custom_drawer.dart';
import 'package:flutter_basics/components/custom_elevated_button.dart';
import 'package:flutter_basics/components/custom_space_height.dart';
import 'package:flutter_basics/default_page.dart';
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

  void navToDefault(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const DefaultPage(),
      ),
    );
  }

  void navToDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return CustomDialogBox(
          title: 'Custom Dialog',
          content: 'This is a Custom Dialog box with most cutomzied option.',
          cancelText: 'No',
          confirmText: 'Yes',
          onConfirm: () {
            navToDefault(context);
          },
        );
      },
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
        //. app bar
        appBar: const CustomAppBar(
          title: 'Dialog Box',
          actions: [
            Icon(
              Icons.cloud_circle,
            ),
          ],
        ),

        // drawer
        drawer: CustomDrawer(
          drawerItems: itemList,
        ),

        // body
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomElevatedButton(
                title: 'Buttom 1',
                onTap: () {
                  navToDialog(context);
                },
              ),
              const CustomSpaceHeight(),
              CustomElevatedButton(
                title: 'Button 2',
                onTap: () {
                  navToDialog(context);
                },
              ),
              const CustomSpaceHeight(),
              CustomElevatedButton(
                title: 'Button 3',
                onTap: () {
                  navToDialog(context);
                },
              ),
            ],
          ),
        )

        // bottom nav bar

        );
  }
}
