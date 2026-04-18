import 'package:flutter/material.dart';
import 'package:flutter_basics/images/image_display_type/image_memory_demo.dart';

class ImageMemoryDriverDemo extends StatelessWidget {
  const ImageMemoryDriverDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ImageMemoryDemo(imageByte: 'assets/img3.jpeg'),
          SizedBox(width: 10,),
          ImageMemoryDemo(imageByte: 'assets/img1.jpeg'),
          SizedBox(width: 10,),
          ImageMemoryDemo(imageByte: 'assets/img2.jpeg'),
          SizedBox(width: 10,),
          ImageMemoryDemo(imageByte: 'assets/img4.jpeg'),
        ],
      ),
    );
  }
}