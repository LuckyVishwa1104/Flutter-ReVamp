import 'package:flutter/material.dart';
import 'package:flutter_basics/buttons/elevated_buttton_demo.dart';
import 'package:flutter_basics/buttons/icon_button_demo.dart';

class ButtonDriverDemo extends StatelessWidget {
  const ButtonDriverDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        title: const Text(
          'Buttons',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

        // action buttons for app bar icons
        actions: const [
          Icon(
            Icons.location_city,
          ),
        ],
      ),

      // drawer
      drawer: const Icon(
        Icons.grid_4x4,
      ),

      // body
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 228, 226, 226)),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // elevated button
            ElevatedButttonDemo(),
            SizedBox(
              height: 50,
            ),
            IconButtonDemo(),
          ],
        ),
      ),

      // bottom nav bar
    );
  }
}
