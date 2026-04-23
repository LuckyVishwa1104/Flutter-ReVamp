import 'package:flutter/material.dart';

class ModalBottomSheetDemo extends StatefulWidget {
  const ModalBottomSheetDemo({super.key});

  @override
  State<ModalBottomSheetDemo> createState() => _ModalBottomSheetDemoState();
}

class _ModalBottomSheetDemoState extends State<ModalBottomSheetDemo> {
  final List<String> optionList = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
    'Option 5'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text(
          'Bottom Sheet',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: const [
          Icon(
            Icons.star,
          ),
        ],
        actionsPadding: const EdgeInsets.only(right: 8),
      ),

      // drawer
      drawer: const Icon(
        Icons.grid_3x3,
      ),

      body: Center(
        child: ElevatedButton(
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
            elevation: 4, // to add shadow ncliment
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  15), // to add border radius to the button
            ),
            side: const BorderSide(
              // to add border to the button
              color: Colors.red,
              width: 1,
            ),
          ),
          onPressed: () {
            _openBottomSheet(context);
          },
          child: const Text('Bottom Sheet'),
        ),
      ),
    );
  }

  void _openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,

      // to set the upper border fo the bottom sheet
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(22),
        ),
      ),

      // isDismissible: true, // to set the pop out of bottom sheet on outside click by default it is true
      // isScrollControlled: true,  // it allow full screen height
      // useSafeArea: true,  // prevent overlaping with status bar or notch
      // enableDrag: true,  // enable swipe doen to close by default it is true
      // backgroundColor: Colors.white,
      // barrierColor: Colors.black,  // set color to the space behind the bottom sheet

      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(
            itemCount: optionList.length,
            itemBuilder: (context, index) {
              return Text(
                optionList[index],
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              );
            },
          ),
        );
      },
    );
  }
}
