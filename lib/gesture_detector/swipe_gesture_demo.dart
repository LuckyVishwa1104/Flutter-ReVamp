import 'package:flutter/material.dart';

class SwipeGestureDemo extends StatefulWidget {
  const SwipeGestureDemo({super.key});

  @override
  State<SwipeGestureDemo> createState() => _SwipeGestureDemoState();
}

class _SwipeGestureDemoState extends State<SwipeGestureDemo> {
  double x = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        title: const Text(
          'Swipe Gesture',
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
      body: Center(
        child: GestureDetector(
          onHorizontalDragUpdate: (details) {
            setState(() {
              x += details.delta.dx;
              debugPrint(x.toString());
            });
          },
          child: Transform.translate(
            offset: Offset(x, 0),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ),
        ),
      ),

    );
  }

}
