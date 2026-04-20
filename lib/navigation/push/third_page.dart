import 'package:flutter/material.dart';
import 'package:flutter_basics/navigation/push/fourth_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  void moveNext(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const FourthPage(),
      ),
    );
  }

  void nextPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const FourthPage(),
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
          'Third Page',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: const [
          Icon(
            Icons.star_border,
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
              child: const Text("Next Page"),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                padding: EdgeInsets.zero,
              ),
              onPressed: () => nextPage(context),
              child: const Text('Next Page'),
            ),
          ],
        ),
      ),
    );
  }
}
