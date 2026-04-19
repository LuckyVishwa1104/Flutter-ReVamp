import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ChachedNetworkImageDemo extends StatelessWidget {
  const ChachedNetworkImageDemo({super.key, required this.imgUrl});

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: CachedNetworkImage(
        imageUrl: imgUrl, // image url
        placeholder: (context, url) => const SizedBox(
          height: 60,
          width: 60,
          child: CircularProgressIndicator(
            // place holder while loading the image
            color: Colors.black,
          ),
        ),
        errorWidget: (context, url, error) => const Icon(
          // error woidgit when got error inseted of proper response
          Icons.image_aspect_ratio_outlined,
          color: Colors.black,
          size: 120,
        ),
        height: 150, // height of the image
        width: 190, // width of the image
        fit: BoxFit.cover,
      ),
    );
  }
}
