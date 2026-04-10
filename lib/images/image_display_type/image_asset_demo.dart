import 'package:flutter/material.dart';

class ImageAssetDemo extends StatelessWidget {
  const ImageAssetDemo({super.key, required this.path});
  final String path;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(6),
      child: SizedBox(
        height: 150,
        width: 190,
        child: Image.asset(
          path,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
