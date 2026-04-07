import 'package:flutter/material.dart';

class TextButtonDemo extends StatelessWidget {
  const TextButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    /**
     * 
     * 
     * TextButton - a text button is a flat button with no background, no elevation  , only text for minimal UI
     * 
     * used for low pririty actions like skip, cancle, forgot password, skip - mainly used for secondary actions
     * 
     * 
     */
    return Column(
      children: [
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.blue,
            backgroundColor:
                Colors.grey, // to add backgroun dcolor to the button
            // padding: EdgeInsets.zero,  // to add padding for the text from the default container
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(15)),
          ),
          onPressed: () {
            debugPrint('Text Button Clicked !!!');
          },
          child: const Text(
            'Forgot Password',
          ),
        ),

        const SizedBox(
          height: 30,
        ),

        TextButton.icon(
          onPressed: () {},
          label: const Text('Alert'),
          icon: const Icon(Icons.alarm),
        ),
      ],
    );
  }
}
