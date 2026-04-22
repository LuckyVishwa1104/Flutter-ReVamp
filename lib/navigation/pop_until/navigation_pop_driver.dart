import 'package:flutter/material.dart';
import 'package:flutter_basics/navigation/pop_until/home_page.dart';
import 'package:flutter_basics/navigation/pop_until/initial_screen.dart';

class NavigationPopDriver extends StatelessWidget {
  const NavigationPopDriver({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const InitialScreen(),
      routes: {
        '/home' : (context) => const HomePagePop(),
      },
    );
  }
}