import 'package:flutter/material.dart';
import 'package:flutter_basics/navigation/push/first_page.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  void moveNext(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const FirstPage(),
      ),
    );
  }

  void nextPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const FirstPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text(
          'Fourth Page',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: const [
          Icon(
            Icons.star_border_purple500,
          )
        ],
        actionsPadding: const EdgeInsets.only(
          right: 10,
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => moveNext(context),
              child: const Text('Next Page'),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0, 0),
                  // blurRadius: 10,
                  // spreadRadius: 2,
                )
              ]),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(8)),
                  padding: const EdgeInsets.only(
                    right: 20,
                    left: 20,
                    top: 10,
                    bottom: 10,
                  ),
                ),
                onPressed: () => nextPage(context),
                child: const Text('Next Page'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
