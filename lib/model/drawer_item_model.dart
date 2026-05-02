import 'package:flutter/material.dart';

class DrawerItemModel {

  final String itemTitle;
  final IconData itemIcon;
  final VoidCallback onTap;

  DrawerItemModel(
    {
      required this.itemTitle,
      required this.itemIcon,
      required this.onTap,
    }
  );
  
}