import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;

  const CustomAppBar({
    super.key,
    required this.title,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: Colors.white,
      backgroundColor: Colors.black,
      title: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w400,
        ),
      ),
      // actions: actions,
      actionsPadding: const EdgeInsets.only(left: 10),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
