import 'package:flutter/material.dart';

class IconButtonDemo extends StatelessWidget {
  const IconButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    // Icon Button - display only icon no text, used mainly in app-bar actions and similar places

    // its having transparent background
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // first button
        IconButton(
          onPressed: () {
            debugPrint('Icon Button 1 Clicked !!!');
          },
          icon: const Icon(
            Icons.notifications,
          ),
          iconSize: 40, // to set icon size
          color: Colors.red, // to set color of the icon
          disabledColor: Colors.grey, // to set icon color one its disabled
          tooltip: 'Notification', // text displayed on hower or long pressed
          // padding: const EdgeInsets.all(10),  // control the padding of the opacity of the button press
          style: IconButton.styleFrom(
            backgroundColor: Colors.red,  // set the color to the opacity of the button 
            foregroundColor: Colors.black, // set icon color - it will over ride the color property above
          ),
        ),

        // sized box for spacing
        const SizedBox(
          width: 25,
        ),

        // second button
        IconButton(
          onPressed: () {
            debugPrint(
              'Icons Button 2 clicked !!!',
            );
          },
          icon: const Icon(
            Icons.delete,
          ),
          iconSize: 40, // to set icon size
          color: Colors.blue, // to set color of the icon
          disabledColor: Colors.grey, // to set icon color one its disabled
          tooltip: 'Notification', // text displayed on hower or long pressed
        ),

        // sized box for spacing
        const SizedBox(
          width: 25,
        ),

        // Third Icons button
        IconButton(
          onPressed: () {
            debugPrint(
              'Icon Button 3 Clicked !!!',
            );
          },
          icon: const Icon(
            Icons.share,
          ),
          iconSize: 40, // to set icon size
          color: Colors.green, // to set color of the icon
          disabledColor: Colors.grey, // to set icon color one its disabled
          tooltip: 'Notification', // text displayed on hower or long pressed
        ),
      ],
    );
  }
}
