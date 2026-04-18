import 'dart:io';
import 'package:flutter/material.dart';

class ImageFileDemo extends StatelessWidget {
  const ImageFileDemo({super.key, required this.path});

  final File? path;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(11),
      child: SizedBox(
          height: 150,
          width: 190,
          child: path != null
              ? Image.file(
                  path!,
                  fit: BoxFit.cover,
                )
              : const Icon(
                  Icons.image_rounded,
                  size: 100,
                )),
    );
  }
}
