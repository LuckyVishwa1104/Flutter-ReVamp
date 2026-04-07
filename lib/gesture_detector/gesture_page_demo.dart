import 'package:flutter/material.dart';

class GesturePageDemo extends StatelessWidget {
  const GesturePageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    /**
     * gesture detector - gesture detector is a widgit that can detect user interactions ()
     */
    return Scaffold(
      // app bar
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        title: const Text(
          'Buttons',
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
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // image
            GestureDetector(
              onTap: () => Navigator.pushNamed(
                context,
                '/imagePage',
              ),
              child: SizedBox(
                height: 120,
                width: 120,
                child: Image.asset(
                  'assets/img1.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // text
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/textPage'),
              child: const Text(
                'Click Here',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
              ),
            ),

            // icon
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/iconPage'),
              child: const Icon(
                Icons.notification_add,
                color: Colors.green,
                size: 45,
              ),
            ),

            // container
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/containerPage'),
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
