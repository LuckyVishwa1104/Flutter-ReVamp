import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ImageMemoryDemo extends StatefulWidget {
  const ImageMemoryDemo({super.key, required this.imageByte});

  final String imageByte;

  @override
  State<ImageMemoryDemo> createState() => _ImageMemoryDemoState();
}

class _ImageMemoryDemoState extends State<ImageMemoryDemo> {
  Uint8List? imageData;

  @override
  void initState() {
    super.initState();
    fileToByte();
  }

  void fileToByte() async {
    final ByteData data = await rootBundle.load(widget.imageByte);
    setState(() {
      imageData = data.buffer.asUint8List();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(8),
      child: SizedBox(
        height: 150,
        width: 190,
        child: imageData != null
            ? Image.memory(
                imageData!,
                fit: BoxFit.cover,
              )
            : Container(
                height: 150,
                width: 190,
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(8)),
                child: const Icon(
                  Icons.image,
                  size: 100,
                  color: Colors.black,
                ),
              ),
      ),
    );
  }
}
