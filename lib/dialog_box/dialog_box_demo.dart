import 'package:flutter/material.dart';

class DialogBoxDemo extends StatelessWidget {
  const DialogBoxDemo({super.key});

  final double verticalSpace = 20;
  final double buttonHorizontalPadding = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text(
          'Dialog Box',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: const [
          Icon(
            Icons.logout,
          ),
        ],
        actionsPadding: const EdgeInsets.only(right: 8),
      ),

      // drawer
      drawer: const Icon(
        Icons.grid_3x3,
      ),

      // body
      /* Dialog Box - Dialog is a popup/modal widget the appears above the current screen with a dark overlay 
      it is widly used for delete confirmatoin, logout confirmation, error or success message, loading indicator
      its parent widget ** is showDialog() it takes context and builder as compulsory parameters 
      we have AlertDialog as default but we can design a custom dialog wihich will appear overlay on present screen at ceter**
      */
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(8),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: buttonHorizontalPadding,
                ),
              ),
              onPressed: (){
                _showDeleteDialog(context);
              },
              child: const Text(
                'Delete',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: verticalSpace,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(8),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: buttonHorizontalPadding,
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Click',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: verticalSpace,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(8),  // to adjust the border radius of the
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: buttonHorizontalPadding,
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Click',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: verticalSpace,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(8),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: buttonHorizontalPadding,
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Click',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showDeleteDialog(BuildContext context) {
    return showDialog(
      barrierDismissible: false,  // to control the background click to dismis the dialog
      context: context,
      builder: (context) {
        return AlertDialog(
          // backgroundColor: Colors.blueGrey,  // to control the background color of the dialog box
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12), // to adjust the border radius of the dialog box
          ),
          actionsAlignment: MainAxisAlignment.spaceBetween, // to control the aligment of action button
          title: const Text('Delete'),
          content: const Text('Are you sure you want to delete!'),
          actions: [
            TextButton(
              onPressed: () {
                debugPrint('Delete Dialog Clicked !!!');
                Navigator.pop(context);
              },
              child: const Text('Confirm'),
            ),
            TextButton(
              onPressed: () {
                debugPrint('Delete Dialog Clicked !!!');
                Navigator.pop(context);
              },
              child: const Text('Cancle'),
            ),
          ],
        );
      },
    );
  }
}
