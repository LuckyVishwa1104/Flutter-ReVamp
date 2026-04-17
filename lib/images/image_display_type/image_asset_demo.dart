import 'package:flutter/material.dart';

class ImageAssetDemo extends StatelessWidget {
  const ImageAssetDemo({super.key, required this.path});
  final String path;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(12),  // to add forced border radius to the image
      child: SizedBox( // fixed height and width to occupy the image
        height: 150,
        width: 190,
        child: Image.asset(
          path, // url of the image in the project
          fit: BoxFit.cover,  // to fit the image in the avainable space(container) - by zooming in the image
        ),
      ),
    );
  }
}
