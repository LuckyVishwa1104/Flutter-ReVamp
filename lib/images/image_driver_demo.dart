import 'package:flutter/material.dart';
import 'package:flutter_basics/images/sub_drivers/image_asset_driver_demo.dart';
import 'package:flutter_basics/images/sub_drivers/image_file_driver_demo.dart';
import 'package:flutter_basics/images/sub_drivers/image_memory_driver_demo.dart';
import 'package:flutter_basics/images/sub_drivers/image_network_driver_demo.dart';

class ImageDriverDemo extends StatelessWidget {
  const ImageDriverDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text(
          'Image Display',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: const [
          Icon(
            Icons.lock_clock,
          )
        ],
        actionsPadding: const EdgeInsets.only(
          right: 10,
        ),
      ),

      // drawer
      drawer: const Icon(
        Icons.grid_3x3,
      ),

      // body of the image displayer
      body: Container(
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 206, 234, 195)),
        child: const SingleChildScrollView(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // image by assets
              Text(
                'Image By Assets',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ImageAssetDriverDemo(),
              SizedBox(
                height: 20,
              ),

              // image by network
              Text(
                'Image By Network',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ImageNetworkDriverDemo(),
              SizedBox(
                height: 20,
              ),

              // image by file
              Text(
                'Image By File',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ImageFileDriverDemo(),
              SizedBox(
                height: 20,
              ),

              // image by Memory - used to display image when it is in yte format (API response, base64, etc.)
              Text(
                'Image By Memory',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ImageMemoryDriverDemo(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
