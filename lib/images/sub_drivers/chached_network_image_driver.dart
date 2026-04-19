import 'package:flutter/material.dart';
import 'package:flutter_basics/images/image_display_type/chached_network_image_demo.dart';

class ChachedNetworkImageDriver extends StatelessWidget {
  const ChachedNetworkImageDriver({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ChachedNetworkImageDemo(
              imgUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ60q1w4WdlFNMWaasSbFOtCSXJeLxtkSmwvg&s'),
          SizedBox(
            width: 10,
          ),
          ChachedNetworkImageDemo(
              imgUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYJo2sba3F3BZoc3KDWc2DMZrkCxkXpt3n2A&s'),
          SizedBox(
            width: 10,
          ),
          ChachedNetworkImageDemo(
              imgUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxXO1aMp0b3TtiPAm5sQc18-jf5dz9kZhaqw&s'),
        ],
      ),
    );
  }
}
