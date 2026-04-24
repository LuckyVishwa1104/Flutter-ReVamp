import 'package:flutter/material.dart';
import 'package:flutter_basics/bottom_sheet/option_page.dart';

class ModalBottomSheetDemo extends StatefulWidget {
  const ModalBottomSheetDemo({super.key});

  @override
  State<ModalBottomSheetDemo> createState() => _ModalBottomSheetDemoState();
}

class _ModalBottomSheetDemoState extends State<ModalBottomSheetDemo> {
  final List<String> optionList = [
    'Profile',
    'Settings',
    'Favorites',
    'Help Center',
    'Notifications',
    'Profile',
    'Settings',
    'Favorites',
    'Help Center',
    'Notifications',
  ];

  final List<Icon> optionIcon = [
    const Icon(Icons.person, color: Colors.amber),
    const Icon(Icons.settings, color: Colors.blueGrey),
    const Icon(Icons.favorite, color: Colors.pink),
    const Icon(Icons.help_outline, color: Colors.green),
    const Icon(Icons.notifications, color: Colors.redAccent),
    const Icon(Icons.person, color: Colors.amber),
    const Icon(Icons.settings, color: Colors.blueGrey),
    const Icon(Icons.favorite, color: Colors.pink),
    const Icon(Icons.help_outline, color: Colors.green),
    const Icon(Icons.notifications, color: Colors.redAccent),
  ];

  void navToOption(BuildContext context, String title) {
    Navigator.pop(context);  // pop the bottom sheet on option click

    // await Future.delayed(const Duration(milliseconds: 200));

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OptionPage(optionTitle: title,),
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
        return Column(
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              height: 5,
              width: 80,
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(3),
                  right: Radius.circular(3),
                ),
              ),
            ),
            Flexible(
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 12, right: 12, bottom: 18),
                itemCount: optionList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () => navToOption(context, optionList[index]),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color.fromARGB(255, 228, 226, 226),
                          ),
                          child: Row(
                            children: [
                              optionIcon[index],
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                optionList[index],
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                      if (index != (optionList.length - 1))
                        const SizedBox(
                          height: 10,
                        ),
                    ],
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
