import 'package:flutter/material.dart';

class SettingDemo extends StatelessWidget {
  const SettingDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 237, 229, 219),
      padding: const EdgeInsets.all(8),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 170,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.purple,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 125,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.indigo,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 145,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.green,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 130,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.orange,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );

    // Center(
    //   child:
    //   Text(
    //     'Setting',
    //     style: TextStyle(
    //       color: Colors.blue,
    //       fontSize: 45,
    //       fontWeight: FontWeight.w600,
    //       fontStyle: FontStyle.normal,
    //       letterSpacing: 1.5,
    //       decoration: TextDecoration.underline,
    //     ),
    //   ),
    // ),
  }
}
