import 'package:flutter/material.dart';

class OptionPage extends StatelessWidget {
  const OptionPage({super.key});

  void moveBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text(
          'Bottom Sheet',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: const [
          Icon(
            Icons.star,
          ),
        ],
        actionsPadding: const EdgeInsets.only(right: 8),
      ),

      // drawer
      drawer: const Icon(
        Icons.grid_3x3,
      ),

      body: Center(
        child: IconButton(
          onPressed: () => moveBack(context),
          tooltip: 'Previous Page',
          icon: const Icon(
            Icons.skip_previous_rounded,
            size: 35,
            color: Colors.blueGrey,
          ),
        ),
      ),
    );
  }
}
