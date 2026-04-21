import 'package:flutter/material.dart';
import 'package:flutter_basics/navigation/push_replacement/first_page.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  void moveNext(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const FirstPage(),
      ),
    );
  }

  void nextPage(BuildContext context) {
    Navigator.pushReplacement(
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
              child: const Text("Next Page"),
            ),
            const SizedBox(
              height: 20,
            ),
            IconButton(
              style: IconButton.styleFrom(
                foregroundColor: Colors.black,
              ),
              iconSize: 25,
              tooltip: 'Next Page',
              onPressed: () => nextPage(context),
              icon: const Icon(
                Icons.forward,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
