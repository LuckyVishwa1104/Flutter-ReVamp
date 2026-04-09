import 'package:flutter/material.dart';

class DragGestureDemo extends StatefulWidget {
  const DragGestureDemo({super.key});

  @override
  State<DragGestureDemo> createState() => _DragGestureDemoState();
}

class _DragGestureDemoState extends State<DragGestureDemo> {
  double x = 0;
  double y = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        title: const Text(
          'Drag Gesture',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),

        // action buttons for app bar icons
        actions: const [
          Icon(
            Icons.location_city,
          ),
        ],

        actionsPadding: const EdgeInsets.only(right: 10),
      ),

      // drawer
      drawer: const Icon(
        Icons.grid_4x4,
      ),

      // body
      body: GestureDetector(
        onPanUpdate: (details) {
          setState(() {
            x += details.delta.dx;
            y += details.delta.dy;
          });

          debugPrint('X $x');
          debugPrint('Y $y');
        },
        child: Stack(
          children: [
            Positioned(
              top: y,
              left: x,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
