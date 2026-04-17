import 'package:flutter/material.dart';

class ImageNetworkDemo extends StatelessWidget {
  const ImageNetworkDemo({super.key, required this.path});

  final String path;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: SizedBox(
        height: 150,
        width: 190,
        child: Image.network(
          path,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
