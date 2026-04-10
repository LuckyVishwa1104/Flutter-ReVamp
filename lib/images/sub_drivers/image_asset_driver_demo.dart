import 'package:flutter/material.dart';
import 'package:flutter_basics/images/image_display_type/image_asset_demo.dart';

class ImageAssetDriverDemo extends StatelessWidget {
  const ImageAssetDriverDemo({super.key});

  @override
  Widget build(BuildContext context) {

    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ImageAssetDemo(path: '/assets/img2.jpeg'),
          SizedBox(
            width: 10,
          ),
          ImageAssetDemo(path: '/assests/img3.jpeg'),
          SizedBox(
            width: 10,
          ),
          ImageAssetDemo(path: '/assets/img4.jpeg'),
        ],
      ),
    );

  }

}



