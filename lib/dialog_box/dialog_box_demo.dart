import 'package:flutter/material.dart';

class DialogBoxDemo extends StatelessWidget {
  const DialogBoxDemo({super.key});

  final double verticalSpace = 20;
  final double buttonHorizontalPadding = 16;

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
            SizedBox(
              height: 50,
              width: 120,
              child: ElevatedButton(
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
                onPressed: () {
                  _showDeleteDialog(context);
                },
                child: const Text(
                  'Delete',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: verticalSpace,
            ),
            SizedBox(
              height: 50,
              width: 120,
              child: ElevatedButton(
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
                onPressed: () {
                  _showLogoutDialog(context);
                },
                child: const Text(
                  'Logout',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: verticalSpace,
            ),
            SizedBox(
              height: 50,
              width: 120,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(
                        8), // to adjust the border radius of the
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: buttonHorizontalPadding,
                  ),
                ),
                onPressed: () {
                  _showSuccesDialog(context);
                },
                child: const Text(
                  'Success',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: verticalSpace,
            ),
            SizedBox(
              height: 50,
              width: 120,
              child: ElevatedButton(
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
                onPressed: () async {
                  _showLoader(context);
                  await Future.delayed(
                    const Duration(milliseconds: 1000),
                  );
                  // Navigator.pop(context);
                  if (context.mounted) {
                    Navigator.pop(context);
                  }
                },
                child: const Text(
                  'Loading',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // loding dialog
  Future<void> _showLoader(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Container(
            height: 80,
            width: 80,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: const CircularProgressIndicator(
              color: Colors.black,
            ),
          ),
        );
      },
    );
  }

  // success dialog
  Future<void> _showSuccesDialog(BuildContext context) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: const Color.fromARGB(255, 238, 253, 250),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(15),
          ),
          actionsAlignment: MainAxisAlignment.spaceAround,
          title: const Text('Payment'),
          content: const SizedBox(
            height: 100,
            child: Column(
              children: [
                Icon(
                  Icons.check_box_rounded,
                  size: 60,
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Payment has been completed successfully!'),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                debugPrint('Sucess Dialog Clicked!');
                Navigator.pop(context);
              },
              child: const Text(
                'Ok',
                style: TextStyle(color: Colors.green),
              ),
            ),
          ],
        );
      },
    );
  }

  // logout dialog
  Future<void> _showLogoutDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: const Color.fromARGB(255, 231, 231, 231),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(15),
          ),
          actionsAlignment: MainAxisAlignment.spaceAround,
          title: const Text('Logout'),
          content: const Text('Are you sure you want to Logout!'),
          actions: [
            TextButton(
              onPressed: () {
                debugPrint('Logout Dialog Clicked.');
                Navigator.pop(context);
              },
              child: const Text(
                'No',
                style: TextStyle(color: Colors.red),
              ),
            ),
            TextButton(
              onPressed: () {
                debugPrint('Logout Dialog Clicked.');
                Navigator.pop(context);
              },
              child: const Text(
                'Yes',
                style: TextStyle(color: Colors.green),
              ),
            ),
          ],
        );
      },
    );
  }

  // delete dialog
  Future<void> _showDeleteDialog(BuildContext context) {
    return showDialog(
      barrierDismissible:
          false, // to control the background click to dismis the dialog
      context: context,
      builder: (context) {
        return AlertDialog(
          // backgroundColor: Colors.blueGrey,  // to control the background color of the dialog box
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(
                12), // to adjust the border radius of the dialog box
          ),
          actionsAlignment: MainAxisAlignment
              .spaceBetween, // to control the aligment of action button
          title: const Text('Delete'),
          content: const Text('Are you sure you want to delete!'),
          actions: [
            TextButton(
              onPressed: () {
                debugPrint('Delete Dialog Clicked !!!');
                Navigator.pop(context);
              },
              child: const Text(
                'Cancle',
                style: TextStyle(color: Colors.red),
              ),
            ),
            TextButton(
              onPressed: () {
                debugPrint('Delete Dialog Clicked !!!');
                Navigator.pop(context);
              },
              child: const Text(
                'Confirm',
                style: TextStyle(color: Colors.green),
              ),
            ),
          ],
        );
      },
    );
  }
}
