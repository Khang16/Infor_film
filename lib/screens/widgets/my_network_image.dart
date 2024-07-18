import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MyNetworkImage extends StatelessWidget {
  const MyNetworkImage({
    super.key,
    required this.url,
    required this.size,
  });

  final String url;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      fit: BoxFit.cover,
      width: size.width,
      placeholder: (context, url) {
        return Shimmer.fromColors(
          baseColor: Colors.black54,
          highlightColor: Colors.black12,
          child: IgnorePointer(child: Container(color: Colors.white)),
        );
      },
    );
  }
}
