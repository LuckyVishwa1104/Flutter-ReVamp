import 'package:flutter/material.dart';

class ElevatedButttonDemo extends StatelessWidget {
  const ElevatedButttonDemo({super.key});

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(

      // styking of the button 
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        shadowColor: Colors.green,
        padding: const EdgeInsets.only(
          top: 15,
          bottom: 15,
          right: 20,
          left: 20,
        ),
        elevation: 4,  // to add shadow ncliment 
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),  // to add border radius to the button 
        ),
        side: const BorderSide( // to add border to the button
          color: Colors.red,
          width: 1,
        ),
      ),

      // on pressed function of the button
      onPressed: () {
        debugPrint('Button Clicked !!!');
      },

      // child fo the elevated button 
      child: const Text(
        'Click',
        style: TextStyle(
          fontSize: 35
        ),
      ),

    );
  }

}
