import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_basics/images/image_display_type/image_file_demo.dart';
import 'package:image_picker/image_picker.dart';

class ImageFileDriverDemo extends StatefulWidget {
  const ImageFileDriverDemo({super.key});

  @override
  State<ImageFileDriverDemo> createState() => _ImageFileDriverDemoState();
}

class _ImageFileDriverDemoState extends State<ImageFileDriverDemo> {
  File? selectedGallery;
  File? selectedImageCamera;

// function to access image from Camera
  void pickFromCamera() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      selectedImageCamera = File(returnedImage!.path);
    });
  }

// function to access image from gallery
  void pickFromGallery() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      selectedGallery = File(returnedImage!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Column(
            children: [
              ImageFileDemo(path: selectedImageCamera),
              const SizedBox(
                height: 10,
              ),
              IconButton(
                onPressed: pickFromCamera,
                icon: const Icon(
                  Icons.camera,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ],
          ),

          const SizedBox(
            width: 10,
          ),

          Column(
            children: [
              ImageFileDemo(path: selectedGallery),
              const SizedBox(
                height: 10,
              ),
              IconButton(
                onPressed: pickFromGallery,
                icon: const Icon(
                  Icons.browse_gallery,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
