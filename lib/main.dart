import 'package:flutter/material.dart';
import 'package:flutter_basics/bottom_navigton_demo/bottom_nav_driver.dart';
import 'package:flutter_basics/bottom_navigton_demo/navigation_bar_driver.dart';
import 'package:flutter_basics/bottom_navigton_demo/persistent_navbar_driver.dart';
import 'package:flutter_basics/bottom_sheet/modal_bottom_sheet_demo.dart';
import 'package:flutter_basics/buttons/button_driver.dart';
import 'package:flutter_basics/buttons/button_driver_demo.dart';
import 'package:flutter_basics/constructs/custom_column_demo.dart';
import 'package:flutter_basics/constructs/custom_container.dart';
import 'package:flutter_basics/constructs/custom_container_demo.dart';
import 'package:flutter_basics/constructs/custom_row.dart';
import 'package:flutter_basics/constructs/custom_row_demo.dart';
import 'package:flutter_basics/constructs/custom_scroll_view.dart';
import 'package:flutter_basics/constructs/list_view_builder_demo.dart';
import 'package:flutter_basics/constructs/list_view_builder_separated.dart';
import 'package:flutter_basics/constructs/scroll_view_demo.dart';
import 'package:flutter_basics/dialog_box/dialog_box_demo.dart';
import 'package:flutter_basics/gesture_detector/container_page.dart';
import 'package:flutter_basics/gesture_detector/drag_gesture_demo.dart';
import 'package:flutter_basics/gesture_detector/gesture_driver.dart';
import 'package:flutter_basics/gesture_detector/gesture_page_demo.dart';
import 'package:flutter_basics/gesture_detector/icon_page.dart';
import 'package:flutter_basics/gesture_detector/image_page.dart';
import 'package:flutter_basics/gesture_detector/swipe_gesture_demo.dart';
import 'package:flutter_basics/gesture_detector/text_page.dart';
import 'package:flutter_basics/gesture_detector/zoom_gesture_demo.dart';
import 'package:flutter_basics/home_page_new.dart';
import 'package:flutter_basics/hone_page.dart';
import 'package:flutter_basics/images/image_driver.dart';
import 'package:flutter_basics/images/image_driver_demo.dart';
import 'package:flutter_basics/navigation/pop_until/navigation_pop_driver.dart';
import 'package:flutter_basics/navigation/push/push_driver.dart';
import 'package:flutter_basics/navigation/push/push_driver_demo.dart';
import 'package:flutter_basics/navigation/push_replacement/push_replacement_driver.dart';
import 'package:flutter_basics/navigation/push_replacement/replacement_driver_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return 

    // const NavigationPopDriver();

    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      home: const DialogBoxDemo(),
      routes: {
        '/imagePage' : (context) => const ImagePage(),
        '/iconPage' : (context) => const IconPage(),
        '/textPage' : (contex) => const TextPage(),
        '/containerPage' : (context) => const ContainerPage(),
      },
    );

  }
}
