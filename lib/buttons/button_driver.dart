import 'package:flutter/material.dart';
import 'package:flutter_basics/buttons/elevated_button.dart';
import 'package:flutter_basics/buttons/icon_button.dart';
import 'package:flutter_basics/buttons/material_button.dart';
import 'package:flutter_basics/buttons/text_buttton.dart';

class ButtonDriver extends StatelessWidget {
  const ButtonDriver({super.key});
  void _handleColorChanged(Color color) {
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Button'),
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                MyElevatedbutton(onColorChanged: _handleColorChanged,),
                const SizedBox(
                  height: 20.0,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('one'),
                    MyTextButton(),
                    Text('two'),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const MyIconButton(),
                const SizedBox(
                  height: 20,
                ),
                const MyMaterialButton(),
              ],
            ),
          ),
        ),
        drawer: const Icon(Icons.grid_3x3),
      ),
    );
  }
  
}

