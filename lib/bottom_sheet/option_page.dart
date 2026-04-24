import 'package:flutter/material.dart';

class OptionPage extends StatelessWidget {
  final String optionTitle;
  const OptionPage({super.key, required this.optionTitle});

  void moveBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text(
          optionTitle,
          style: const TextStyle(
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
