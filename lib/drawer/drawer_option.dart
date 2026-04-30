import 'package:flutter/material.dart';

class DrawerOption extends StatelessWidget {
  const DrawerOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text(
          'Drawer Option',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: const [
          Icon(
            Icons.logout,
          ),
        ],
        actionsPadding: const EdgeInsets.only(right: 8),
      ),

      body: const Center(
        child: Text(
          'Drawer Option',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
