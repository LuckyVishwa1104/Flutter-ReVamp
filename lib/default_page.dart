import 'package:flutter/material.dart';
import 'package:flutter_basics/components/custom_app_bar.dart';

class DefaultPage extends StatelessWidget {
  const DefaultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Default page',
        actions: [
          Icon(
            Icons.share,
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Default Page',
          style: TextStyle(
              fontSize: 35, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
    );
  }
}
