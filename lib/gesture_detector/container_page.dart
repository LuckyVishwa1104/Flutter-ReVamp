import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Page'),
      ),
      body: const Center(
        child: Text(
          'Redirected form Container gesture',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }

}

