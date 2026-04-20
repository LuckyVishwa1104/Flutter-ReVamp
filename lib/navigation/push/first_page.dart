import 'package:flutter/material.dart';
import 'package:flutter_basics/navigation/push/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});
  void moveNext(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SecondPage()));
  }

  void nextPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (contex) => const SecondPage(),
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
          'First Page',
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
            
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
                shadowColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10),
                ),
                padding: const EdgeInsets.all(20),
              ),
              onPressed: () => nextPage(context),
              child: const Text(
                'Next Page',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
