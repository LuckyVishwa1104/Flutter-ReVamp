import 'package:flutter/material.dart';

class ZoomGestureDemo extends StatefulWidget {
  const ZoomGestureDemo({super.key});

  @override
  State<ZoomGestureDemo> createState() => _ZoomGestureDemoState();
}

class _ZoomGestureDemoState extends State<ZoomGestureDemo> {
  double scale = -4.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        title: const Text(
          'Zoom Gesture',
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

      //body
      body: GestureDetector(
        onScaleUpdate: (details) {
          setState(() {
            scale = details.scale;
          });
        },
        child: Transform.scale(
          scale: scale,
          child: Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(color: Colors.yellow),
            child: Center(
              child: Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
