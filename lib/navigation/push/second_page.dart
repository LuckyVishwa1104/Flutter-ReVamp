import 'package:flutter/material.dart';
import 'package:flutter_basics/navigation/push/third_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  void moveNext(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ThirdPage(),
      ),
    );
  }

  void nextPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ThirdPage(),
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
          'Second Page',
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
                backgroundColor: Colors.grey,
              ),
              iconSize: 60,
              focusColor: Colors.green,
              disabledColor: Colors.red,
              tooltip: 'Next Page',
              onPressed: () => nextPage(context),
              icon: const Icon(Icons.forward_rounded),
            ),
            
          ],
        ),
      ),
    );
  }
}
